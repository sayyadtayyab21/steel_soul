// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'puf_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PufItemModelImpl _$$PufItemModelImplFromJson(Map<String, dynamic> json) =>
    _$PufItemModelImpl(
      unitName: json['unit_name'] as String?,
      unitCode: json['unit_code'] as String?,
      project: json['project'] as String?,
      totalPanels: (json['total_panels'] as num?)?.toInt(),
      scannedPanels: (json['scanned_panels'] as num?)?.toInt(),
      status: json['puf_status'] as String?,
    );

Map<String, dynamic> _$$PufItemModelImplToJson(_$PufItemModelImpl instance) =>
    <String, dynamic>{
      'unit_name': instance.unitName,
      'unit_code': instance.unitCode,
      'project': instance.project,
      'total_panels': instance.totalPanels,
      'scanned_panels': instance.scannedPanels,
      'puf_status': instance.status,
    };
