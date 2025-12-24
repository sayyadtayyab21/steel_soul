import 'dart:convert';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:steel_soul/core/model/failure.dart';
import 'package:steel_soul/features/puf/data/puf_repo.dart';

import 'package:steel_soul/features/riveting/data/riveting_repo.dart';

part 'scanner_cubit.freezed.dart';

@injectable
class ScannerCubit extends Cubit<ScannerState> {
  ScannerCubit(this.repo) : super(ScannerState.initial());
  final PufRepo repo;

  Future<void> extractWeight(File file) async {
    try {
      // Start loading and clear previous data/errors
      emit(state.copyWith(isExtracting: true, error: null, extractedWeight: null));

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
        )),
        (r) => emit(state.copyWith(
          isExtracting: false,
          extractedWeight: r.ocrData.text,
        )),
      );
    } catch (e) {
      emit(state.copyWith(
        isExtracting: false, 
        error: Failure(error: e.toString(), title: 'System Error')
      ));
    }
  }

  // Resets the state to initial (isExtracting: false, weight: null, error: null)
  void reset() => emit(ScannerState.initial());
}

@freezed
class ScannerState with _$ScannerState {
  const factory ScannerState({
    required bool isExtracting,
    String? extractedWeight,
    Failure? error,
  }) = _ScannerState;

  factory ScannerState.initial() => const ScannerState(
        isExtracting: false,
      );
}