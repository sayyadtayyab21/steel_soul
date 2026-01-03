// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectDetailsModelImpl _$$ProjectDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectDetailsModelImpl(
      name: json['name'] as String?,
      customerName: json['customer_name'] as String?,
      projectId: json['project_id'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      customerPhoneNumber: json['customer_phone_number'] as String?,
      status: json['folding_status'] as String?,
    );

Map<String, dynamic> _$$ProjectDetailsModelImplToJson(
        _$ProjectDetailsModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'customer_name': instance.customerName,
      'project_id': instance.projectId,
      'date': instance.date,
      'time': instance.time,
      'customer_phone_number': instance.customerPhoneNumber,
      'folding_status': instance.status,
    };
