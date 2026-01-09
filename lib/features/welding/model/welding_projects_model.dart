import 'package:freezed_annotation/freezed_annotation.dart';
part 'welding_projects_model.freezed.dart';
part 'welding_projects_model.g.dart';

@freezed
class WeldingProjectsModel with _$WeldingProjectsModel {
  const WeldingProjectsModel._();
  const factory WeldingProjectsModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'project_id') String? projectId,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'full_sheet') int? fullSheetCount,
    @JsonKey(name: 'half_sheet') int? halfSheetCount,
    @JsonKey(name: 'quarter_sheet') int? quarterSheetCount,

    @JsonKey(name: 'customer_phone_number') String? customerPhoneNumber,
    @JsonKey(name: 'welding_status') String? status,
  }) = _WeldingProjectsModel;

  factory WeldingProjectsModel.fromJson(Map<String, dynamic> json) =>
      _$WeldingProjectsModelFromJson(json);
}
