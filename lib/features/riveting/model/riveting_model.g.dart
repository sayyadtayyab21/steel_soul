// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riveting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RivetingModelImpl _$$RivetingModelImplFromJson(Map<String, dynamic> json) =>
    _$RivetingModelImpl(
      name: json['name'] as String?,
      customerName: json['customer_name'] as String?,
      projectId: json['project_id'] as String?,
      date: json['date'] as String?,
      customerPhoneNumber: json['customer_phone_number'] as String?,
      status: json['riveting_status'] as String?,
    );

Map<String, dynamic> _$$RivetingModelImplToJson(_$RivetingModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'customer_name': instance.customerName,
      'project_id': instance.projectId,
      'date': instance.date,
      'customer_phone_number': instance.customerPhoneNumber,
      'riveting_status': instance.status,
    };
