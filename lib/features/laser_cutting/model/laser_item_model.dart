import 'package:freezed_annotation/freezed_annotation.dart';
part 'laser_item_model.freezed.dart';
part 'laser_item_model.g.dart';


@freezed
class LaserItemModel with _$LaserItemModel{
  const LaserItemModel._();
  const factory LaserItemModel({
   @JsonKey(name: 'unit_name')String? unitName,
   @JsonKey(name: 'unit_code')String? unitCode,
   @JsonKey(name: 'project')String? project,
    @JsonKey(name: 'total_panels')int? totalPanels,
     @JsonKey(name: 'scanned_panels')int? scannedPanels,
 
   @JsonKey(name: 'laser_cutting_status')String? laserCuttingStatus
  })=_LaserItemModel;

  factory LaserItemModel.fromJson(Map<String, dynamic>json)=>_$LaserItemModelFromJson(json);
}