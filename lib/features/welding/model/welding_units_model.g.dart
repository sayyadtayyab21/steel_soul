// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welding_units_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeldingUnitsModelImpl _$$WeldingUnitsModelImplFromJson(
  Map<String, dynamic> json,
) => _$WeldingUnitsModelImpl(
  unitName: json['unit_name'] as String?,
  unitCode: json['unit_code'] as String?,
  project: json['project'] as String?,
  totalPanels: (json['total_panels'] as num?)?.toInt(),
  scannedPanels: (json['scanned_panels'] as num?)?.toInt(),
  status: json['welding_status'] as String?,
);

Map<String, dynamic> _$$WeldingUnitsModelImplToJson(
  _$WeldingUnitsModelImpl instance,
) => <String, dynamic>{
  'unit_name': instance.unitName,
  'unit_code': instance.unitCode,
  'project': instance.project,
  'total_panels': instance.totalPanels,
  'scanned_panels': instance.scannedPanels,
  'welding_status': instance.status,
};
