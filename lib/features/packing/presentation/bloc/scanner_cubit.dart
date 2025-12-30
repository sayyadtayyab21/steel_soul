import 'dart:convert';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:steel_soul/core/model/failure.dart';
import 'package:steel_soul/features/packing/data/packing_repo.dart';


part 'scanner_cubit.freezed.dart';
@injectable

class ScannerCubit extends Cubit<ScannerState> {
  ScannerCubit(this.repo) : super(ScannerState.initial());
  final PackingRepo repo;

  Future<void> extractWeight(File file) async {
    try {
      // Start loading and store the file in state immediately
      emit(state.copyWith(
        isExtracting: true, 
        error: null, 
        extractedWeight: null,
        capturedImage: file,
        // base64Image: // <--- Store the file here
        base64Image: null,
      ));

      final bytes = await file.readAsBytes();
      final base64Image = base64Encode(bytes);
      final extension = p.extension(file.path).toLowerCase();

      String mimeType;
      if (extension == '.png') {
        mimeType = 'png';
      } else if (extension == '.webp') {
        mimeType = 'webp';
      } else {
        mimeType = 'jpeg';
      }

      final dataUri = 'data:image/$mimeType;base64,$base64Image';
      final response = await repo.textScannerUpload(dataUri);

      response.fold(
        (l) => emit(state.copyWith(
          isExtracting: false,
          error: Failure(error: l.error, title: 'Extraction Failed'),
          // Note: capturedImage remains in state from the previous emit
        )),
        (r) => emit(state.copyWith(
          isExtracting: false,
          extractedWeight: r.ocrData.text,
          base64Image: r.baseImage, // Store the base64 image here

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
    File? capturedImage,
    Failure? error,
    String? base64Image,
  }) = _ScannerState;

  factory ScannerState.initial() => const ScannerState(
        isExtracting: false,
      );
}