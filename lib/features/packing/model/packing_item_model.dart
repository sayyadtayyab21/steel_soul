import 'package:freezed_annotation/freezed_annotation.dart';
part 'packing_item_model.freezed.dart';
part 'packing_item_model.g.dart';


@freezed
class PackingItemModel with _$PackingItemModel{
  const PackingItemModel._();
  const factory PackingItemModel({
   @JsonKey(name: 'unit_name')String? unitName,
   @JsonKey(name: 'unit_code')String? unitCode,
   @JsonKey(name: 'project')String? project,
      @JsonKey(name: 'total_panels')int? totalPanels,
     @JsonKey(name: 'scanned_panels')int? scannedPanels,
 
   @JsonKey(name: 'packing_status')String? status
  })=_PackingItemModel;

  factory PackingItemModel.fromJson(Map<String, dynamic>json)=>_$PackingItemModelFromJson(json);
}