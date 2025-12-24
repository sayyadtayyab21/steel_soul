import 'package:freezed_annotation/freezed_annotation.dart';
part 'riveting_item_model.freezed.dart';
part 'riveting_item_model.g.dart';


@freezed
class RivetingItemModel with _$RivetingItemModel{
  const RivetingItemModel._();
  const factory RivetingItemModel({
   @JsonKey(name: 'unit_name')String? unitName,
   @JsonKey(name: 'unit_code')String? unitCode,
   @JsonKey(name: 'project')String? project,
 
   @JsonKey(name: 'powder_coating_status')String? status
  })=_RivetingItemModel;

  factory RivetingItemModel.fromJson(Map<String, dynamic>json)=>_$RivetingItemModelFromJson(json);
}