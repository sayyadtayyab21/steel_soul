// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scanner_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SacnnerDetailsModelImpl _$$SacnnerDetailsModelImplFromJson(
  Map<String, dynamic> json,
) => _$SacnnerDetailsModelImpl(
  name: json['name'] as String?,
  panelName: json['panel_name'] as String?,
  project: json['project'] as String?,
  unit: json['unit'] as String?,
  laserCuttingStatus: json['laser_cutting_status'] as String?,
);

Map<String, dynamic> _$$SacnnerDetailsModelImplToJson(
  _$SacnnerDetailsModelImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'panel_name': instance.panelName,
  'project': instance.project,
  'unit': instance.unit,
  'laser_cutting_status': instance.laserCuttingStatus,
};
