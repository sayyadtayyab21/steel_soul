// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folding_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoldingItemModelImpl _$$FoldingItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FoldingItemModelImpl(
      unitName: json['unit_name'] as String?,
      unitCode: json['unit_code'] as String?,
      project: json['project'] as String?,
      totalPanels: (json['total_panels'] as num?)?.toInt(),
      scannedPanels: (json['scanned_panels'] as num?)?.toInt(),
      status: json['folding_status'] as String?,
    );

Map<String, dynamic> _$$FoldingItemModelImplToJson(
        _$FoldingItemModelImpl instance) =>
    <String, dynamic>{
      'unit_name': instance.unitName,
      'unit_code': instance.unitCode,
      'project': instance.project,
      'total_panels': instance.totalPanels,
      'scanned_panels': instance.scannedPanels,
      'folding_status': instance.status,
    };
