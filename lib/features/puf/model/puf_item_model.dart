import 'package:freezed_annotation/freezed_annotation.dart';
part 'puf_item_model.freezed.dart';
part 'puf_item_model.g.dart';


@freezed
class PufItemModel with _$PufItemModel{
  const PufItemModel._();
  const factory PufItemModel({
   @JsonKey(name: 'unit_name')String? unitName,
   @JsonKey(name: 'unit_code')String? unitCode,
   @JsonKey(name: 'project')String? project,
 
   @JsonKey(name: 'puf_status')String? status
  })=_PufItemModel;

  factory PufItemModel.fromJson(Map<String, dynamic>json)=>_$PufItemModelFromJson(json);
}