import 'dart:convert';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:steel_soul/core/model/failure.dart';
import 'package:steel_soul/features/riveting/data/riveting_repo.dart';



part 'scanner_cubit.freezed.dart';
@injectable

class ScannerCubit extends Cubit<ScannerState> {
  ScannerCubit(this.repo) : super(ScannerState.initial());
  final RivetingRepo repo;
// Inside ScannerCubit.dart

Future<void> extractWeight(File file) async {
  try {
    final now = DateTime.now();
    final timeString = now.toIso8601String(); 

    emit(state.copyWith(
      isExtracting: true, 
      error: null, 
      extractedWeight: null,
      capturedImage: file,
      captureTime: now,
      base64Image: null,
    ));

    final bytes = await file.readAsBytes();
    final base64Image = base64Encode(bytes);
    final extension = p.extension(file.path).toLowerCase();

    String mimeType = (extension == '.png') ? 'png' : (extension == '.webp' ? 'webp' : 'jpeg');
    final dataUri = 'data:image/$mimeType;base64,$base64Image';

    // Pass the timestamp as a positional argument (ensure the Repo method accepts it as positional)
    final response = await repo.textScannerUpload(
      dataUri,
      timeString,
    );

    response.fold(
      (l) => emit(state.copyWith(
        isExtracting: false,
        error: Failure(error: l.error, title: 'Extraction Failed'),
      )),
      (r) => emit(state.copyWith(
        isExtracting: false,
        extractedWeight: r.ocrData.text,
        base64Image: r.baseImage,
      )),
    );
  } catch (e) {
    emit(state.copyWith(
      isExtracting: false, 
      error: Failure(error: e.toString(), title: 'System Error')
    ));
  }
}

  void reset() => emit(ScannerState.initial());
}
@freezed
class ScannerState with _$ScannerState {
  const factory ScannerState({
    required bool isExtracting,
    String? extractedWeight,
    DateTime? captureTime,
    File? capturedImage,
    Failure? error,
    String? base64Image,
  }) = _ScannerState;

  factory ScannerState.initial() => const ScannerState(
        isExtracting: false,
      );
}