// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laser_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaserItemModelImpl _$$LaserItemModelImplFromJson(Map<String, dynamic> json) =>
    _$LaserItemModelImpl(
      unitName: json['unit_name'] as String?,
      unitCode: json['unit_code'] as String?,
      project: json['project'] as String?,
      laserCuttingStatus: json['packing_status'] as String?,
    );

Map<String, dynamic> _$$LaserItemModelImplToJson(
  _$LaserItemModelImpl instance,
) => <String, dynamic>{
  'unit_name': instance.unitName,
  'unit_code': instance.unitCode,
  'project': instance.project,
  'packing_status': instance.laserCuttingStatus,
};
