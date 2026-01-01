// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackingModelImpl _$$PackingModelImplFromJson(Map<String, dynamic> json) =>
    _$PackingModelImpl(
      name: json['name'] as String?,
      customerName: json['customer_name'] as String?,
      projectId: json['project_id'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      customerPhoneNumber: json['customer_phone_number'] as String?,
      laserCuttingStatus: json['packing_status'] as String?,
    );

Map<String, dynamic> _$$PackingModelImplToJson(_$PackingModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'customer_name': instance.customerName,
      'project_id': instance.projectId,
      'date': instance.date,
      'time': instance.time,
      'customer_phone_number': instance.customerPhoneNumber,
      'packing_status': instance.laserCuttingStatus,
    };
