// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laser_cutting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaserCuttingListImpl _$$LaserCuttingListImplFromJson(
  Map<String, dynamic> json,
) => _$LaserCuttingListImpl(
  name: json['name'] as String?,
  customerName: json['customer_name'] as String?,
  projectId: json['project_id'] as String?,
  date: json['date'] as String?,
  customerPhoneNumber: json['customer_phone_number'] as String?,
  laserCuttingStatus: json['packing_status'] as String?,
);

Map<String, dynamic> _$$LaserCuttingListImplToJson(
  _$LaserCuttingListImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'customer_name': instance.customerName,
  'project_id': instance.projectId,
  'date': instance.date,
  'customer_phone_number': instance.customerPhoneNumber,
  'packing_status': instance.laserCuttingStatus,
};
