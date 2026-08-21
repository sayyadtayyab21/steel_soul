// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panel_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PanelStatusModelImpl _$$PanelStatusModelImplFromJson(
  Map<String, dynamic> json,
) => _$PanelStatusModelImpl(
  status: json['status'] as String,
  message: json['message'] as String,
  totalScanned: (json['total_scanned'] as num?)?.toInt(),
  successCount: (json['success_count'] as num?)?.toInt(),
  failedCount: (json['failed_count'] as num?)?.toInt(),
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => PanelResult.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  succeeded:
      (json['succeeded'] as List<dynamic>?)
          ?.map((e) => PanelResult.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  failed:
      (json['failed'] as List<dynamic>?)
          ?.map((e) => PanelResult.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$PanelStatusModelImplToJson(
  _$PanelStatusModelImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'total_scanned': instance.totalScanned,
  'success_count': instance.successCount,
  'failed_count': instance.failedCount,
  'results': instance.results,
  'succeeded': instance.succeeded,
  'failed': instance.failed,
};

_$PanelResultImpl _$$PanelResultImplFromJson(Map<String, dynamic> json) =>
    _$PanelResultImpl(
      status: json['status'] as String,
      panelId: json['panel_id'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$PanelResultImplToJson(_$PanelResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'panel_id': instance.panelId,
      'message': instance.message,
    };
