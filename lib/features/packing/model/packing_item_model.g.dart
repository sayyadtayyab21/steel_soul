// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packing_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackingItemModelImpl _$$PackingItemModelImplFromJson(
  Map<String, dynamic> json,
) => _$PackingItemModelImpl(
  unitName: json['unit_name'] as String?,
  unitCode: json['unit_code'] as String?,
  project: json['project'] as String?,
  totalPanels: (json['total_panels'] as num?)?.toInt(),
  scannedPanels: (json['scanned_panels'] as num?)?.toInt(),
  status: json['packing_status'] as String?,
);

Map<String, dynamic> _$$PackingItemModelImplToJson(
  _$PackingItemModelImpl instance,
) => <String, dynamic>{
  'unit_name': instance.unitName,
  'unit_code': instance.unitCode,
  'project': instance.project,
  'total_panels': instance.totalPanels,
  'scanned_panels': instance.scannedPanels,
  'packing_status': instance.status,
};
