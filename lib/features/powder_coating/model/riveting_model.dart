import 'package:freezed_annotation/freezed_annotation.dart';
part 'riveting_model.freezed.dart';
part 'riveting_model.g.dart';


@freezed
class RivetingModel with _$RivetingModel{
  const RivetingModel._();
  const factory RivetingModel({
   @JsonKey(name: 'name')String? name,
   @JsonKey(name: 'customer_name')String? customerName,
   @JsonKey(name: 'project_id')String? projectId,
   @JsonKey(name: 'date')String? date,
   @JsonKey(name: 'customer_phone_number')String? customerPhoneNumber,
   @JsonKey(name: 'powder_coating_status')String? status
  })=_RivetingModel;

  factory RivetingModel.fromJson(Map<String, dynamic>json)=>_$RivetingModelFromJson(json);
}
