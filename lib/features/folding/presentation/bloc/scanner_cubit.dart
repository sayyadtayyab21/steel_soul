import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart'; // Required for compute
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:steel_soul/core/model/failure.dart';
import 'package:steel_soul/features/laser_cutting/data/laser_cutting_repo.dart';

part 'scanner_cubit.freezed.dart';

// Move this outside the class to be a top-level function
String _backgroundBase64Encode(List<int> bytes) => base64Encode(bytes);

@injectable
class ScannerCubit extends Cubit<ScannerState> {
  ScannerCubit(this.repo) : super(ScannerState.initial());
  final LaserCuttingRepo repo;

  Future<void> extractWeight(File file) async {
    try {
      emit(
        state.copyWith(
          isExtracting: true,
          error: null,
          extractedWeight: null,
          capturedImage: file,
          base64Image: null,
        ),
      );

      final bytes = await file.readAsBytes();

      // Use compute to prevent main thread blocking (solves InteractionJankMonitor logs)
      final base64Image = await compute(_backgroundBase64Encode, bytes);

      final extension = p.extension(file.path).toLowerCase();
      String mimeType = (extension == '.png')
          ? 'png'
          : (extension == '.webp' ? 'webp' : 'jpeg');
      final dataUri = 'data:image/$mimeType;base64,$base64Image';

      final response = await repo.textScannerUpload(dataUri);

      response.fold(
        (l) => emit(
          state.copyWith(
            isExtracting: false,
            error: Failure(error: l.error, title: 'Extraction Failed'),
          ),
        ),
        (r) => emit(
          state.copyWith(
            isExtracting: false,
            extractedWeight: r.ocrData.text,
            // We store the dataUri we just created to pass to the next API call
            base64Image: dataUri,
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isExtracting: false,
          error: Failure(error: e.toString(), title: 'System Error'),
        ),
      );
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

  factory ScannerState.initial() => const ScannerState(isExtracting: false);
}
