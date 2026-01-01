import 'package:freezed_annotation/freezed_annotation.dart';
part 'packing_model.freezed.dart';
part 'packing_model.g.dart';

@freezed
class PackingModel with _$PackingModel {
  const PackingModel._();
  const factory PackingModel({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'project_id') String? projectId,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'customer_phone_number') String? customerPhoneNumber,
    @JsonKey(name: 'packing_status') String? laserCuttingStatus,
  }) = _PackingModel;

  factory PackingModel.fromJson(Map<String, dynamic> json) =>
      _$PackingModelFromJson(json);
}
