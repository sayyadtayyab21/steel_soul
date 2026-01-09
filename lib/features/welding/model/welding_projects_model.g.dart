// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welding_projects_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeldingProjectsModelImpl _$$WeldingProjectsModelImplFromJson(
  Map<String, dynamic> json,
) => _$WeldingProjectsModelImpl(
  name: json['name'] as String?,
  customerName: json['customer_name'] as String?,
  projectId: json['project_id'] as String?,
  date: json['date'] as String?,
  time: json['time'] as String?,
  fullSheetCount: (json['full_sheet'] as num?)?.toInt(),
  halfSheetCount: (json['half_sheet'] as num?)?.toInt(),
  quarterSheetCount: (json['quarter_sheet'] as num?)?.toInt(),
  customerPhoneNumber: json['customer_phone_number'] as String?,
  status: json['welding_status'] as String?,
);

Map<String, dynamic> _$$WeldingProjectsModelImplToJson(
  _$WeldingProjectsModelImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'customer_name': instance.customerName,
  'project_id': instance.projectId,
  'date': instance.date,
  'time': instance.time,
  'full_sheet': instance.fullSheetCount,
  'half_sheet': instance.halfSheetCount,
  'quarter_sheet': instance.quarterSheetCount,
  'customer_phone_number': instance.customerPhoneNumber,
  'welding_status': instance.status,
};
