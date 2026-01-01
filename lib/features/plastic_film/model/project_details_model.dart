import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_details_model.freezed.dart';
part 'project_details_model.g.dart';

@freezed
class ProjectDetailsModel with _$ProjectDetailsModel {
  const ProjectDetailsModel._();
  const factory ProjectDetailsModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'project_id') String? projectId,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'customer_phone_number') String? customerPhoneNumber,
    @JsonKey(name: 'plastic_film_status') String? status,
  }) = _ProjectDetailsModel;

  factory ProjectDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectDetailsModelFromJson(json);
}
