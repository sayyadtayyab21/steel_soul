// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riveting_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RivetingItemModelImpl _$$RivetingItemModelImplFromJson(
  Map<String, dynamic> json,
) => _$RivetingItemModelImpl(
  unitName: json['unit_name'] as String?,
  unitCode: json['unit_code'] as String?,
  project: json['project'] as String?,
  status: json['powder_coating_status'] as String?,
);

Map<String, dynamic> _$$RivetingItemModelImplToJson(
  _$RivetingItemModelImpl instance,
) => <String, dynamic>{
  'unit_name': instance.unitName,
  'unit_code': instance.unitCode,
  'project': instance.project,
  'powder_coating_status': instance.status,
};
