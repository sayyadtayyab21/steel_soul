import 'package:freezed_annotation/freezed_annotation.dart';

part 'panel_status_model.freezed.dart';
part 'panel_status_model.g.dart';

@freezed
class PanelStatusModel with _$PanelStatusModel {
  const factory PanelStatusModel({
    required String status,
    required String message,
    @JsonKey(name: 'total_scanned') int? totalScanned,
    @JsonKey(name: 'success_count') int? successCount,
    @JsonKey(name: 'failed_count') int? failedCount,
    @Default([]) List<PanelResult> results,
    @Default([]) List<PanelResult> succeeded,
    @Default([]) List<PanelResult> failed,
  }) = _PanelStatusModel;

  const PanelStatusModel._();

  factory PanelStatusModel.fromJson(Map<String, dynamic> json) =>
      _$PanelStatusModelFromJson(json);

  /// Unified per-panel list regardless of which shape the API sent:
  /// - `results` (single combined array), or
  /// - `succeeded` + `failed` (two separate arrays)
  List<PanelResult> get allResults {
    if (results.isNotEmpty) return results;
    if (succeeded.isNotEmpty || failed.isNotEmpty) {
      return [...succeeded, ...failed];
    }
    return const [];
  }

  /// Derived counts — used as a fallback when the API doesn't send
  /// total_scanned / success_count / failed_count directly.
  int get computedTotal => totalScanned ?? allResults.length;

  int get computedSuccess =>
      successCount ?? allResults.where((r) => r.status == 'success').length;

  int get computedFailed =>
      failedCount ?? allResults.where((r) => r.status != 'success').length;
}

@freezed
class PanelResult with _$PanelResult {
  const factory PanelResult({
    required String status,
    @JsonKey(name: 'panel_id') required String panelId,
    required String message,
  }) = _PanelResult;

  factory PanelResult.fromJson(Map<String, dynamic> json) =>
      _$PanelResultFromJson(json);
}