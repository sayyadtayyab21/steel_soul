// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folding_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoldingItemModelImpl _$$FoldingItemModelImplFromJson(
  Map<String, dynamic> json,
) => _$FoldingItemModelImpl(
  unitName: json['unit_name'] as String?,
  unitCode: json['unit_code'] as String?,
  project: json['project'] as String?,
  status: json['folding_status'] as String?,
);

Map<String, dynamic> _$$FoldingItemModelImplToJson(
  _$FoldingItemModelImpl instance,
) => <String, dynamic>{
  'unit_name': instance.unitName,
  'unit_code': instance.unitCode,
  'project': instance.project,
  'folding_status': instance.status,
};
