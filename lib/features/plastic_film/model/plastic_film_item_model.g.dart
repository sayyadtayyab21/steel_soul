// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plastic_film_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlasticFilmItemModelImpl _$$PlasticFilmItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlasticFilmItemModelImpl(
      unitName: json['unit_name'] as String?,
      unitCode: json['unit_code'] as String?,
      project: json['project'] as String?,
      totalPanels: (json['total_panels'] as num?)?.toInt(),
      scannedPanels: (json['scanned_panels'] as num?)?.toInt(),
      status: json['plastic_film_status'] as String?,
    );

Map<String, dynamic> _$$PlasticFilmItemModelImplToJson(
        _$PlasticFilmItemModelImpl instance) =>
    <String, dynamic>{
      'unit_name': instance.unitName,
      'unit_code': instance.unitCode,
      'project': instance.project,
      'total_panels': instance.totalPanels,
      'scanned_panels': instance.scannedPanels,
      'plastic_film_status': instance.status,
    };
