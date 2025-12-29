import 'package:freezed_annotation/freezed_annotation.dart';
part 'folding_item_model.freezed.dart';
part 'folding_item_model.g.dart';


@freezed
class FoldingItemModel with _$FoldingItemModel{
  const FoldingItemModel._();
  const factory FoldingItemModel({
   @JsonKey(name: 'unit_name')String? unitName,
   @JsonKey(name: 'unit_code')String? unitCode,
   @JsonKey(name: 'project')String? project,
 
   @JsonKey(name: 'folding_status')String? status
  })=_FoldingItemModel;

  factory FoldingItemModel.fromJson(Map<String, dynamic>json)=>_$FoldingItemModelFromJson(json);
}