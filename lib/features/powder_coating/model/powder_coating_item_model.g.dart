// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'powder_coating_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PowderCoatingItemModelImpl _$$PowderCoatingItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PowderCoatingItemModelImpl(
      unitName: json['unit_name'] as String?,
      unitCode: json['unit_code'] as String?,
      project: json['project'] as String?,
      totalPanels: (json['total_panels'] as num?)?.toInt(),
      scannedPanels: (json['scanned_panels'] as num?)?.toInt(),
      status: json['powder_coating_status'] as String?,
    );

Map<String, dynamic> _$$PowderCoatingItemModelImplToJson(
        _$PowderCoatingItemModelImpl instance) =>
    <String, dynamic>{
      'unit_name': instance.unitName,
      'unit_code': instance.unitCode,
      'project': instance.project,
      'total_panels': instance.totalPanels,
      'scanned_panels': instance.scannedPanels,
      'powder_coating_status': instance.status,
    };
