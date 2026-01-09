import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_sheet_model.freezed.dart';
part 'update_sheet_model.g.dart';

@freezed
class UpdateSheetModel with _$UpdateSheetModel {
  const UpdateSheetModel._();
  const factory UpdateSheetModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,

  }) = _UpdateSheetModel;

  factory UpdateSheetModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateSheetModelFromJson(json);
}