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
      status: json['puf_status'] as String?,
    );

Map<String, dynamic> _$$PufItemModelImplToJson(_$PufItemModelImpl instance) =>
    <String, dynamic>{
      'unit_name': instance.unitName,
      'unit_code': instance.unitCode,
      'project': instance.project,
      'puf_status': instance.status,
    };
