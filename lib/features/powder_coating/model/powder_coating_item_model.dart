import 'package:freezed_annotation/freezed_annotation.dart';
part 'powder_coating_item_model.freezed.dart';
part 'powder_coating_item_model.g.dart';


@freezed
class PowderCoatingItemModel with _$PowderCoatingItemModel{
  const PowderCoatingItemModel._();
  const factory PowderCoatingItemModel({
   @JsonKey(name: 'unit_name')String? unitName,
   @JsonKey(name: 'unit_code')String? unitCode,
   @JsonKey(name: 'project')String? project,
 
   @JsonKey(name: 'powder_coating_status')String? status
  })=_PowderCoatingItemModel;

  factory PowderCoatingItemModel.fromJson(Map<String, dynamic>json)=>_$PowderCoatingItemModelFromJson(json);
}