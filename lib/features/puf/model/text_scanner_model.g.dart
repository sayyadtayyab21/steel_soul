// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_scanner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextScannerModelImpl _$$TextScannerModelImplFromJson(
  Map<String, dynamic> json,
) => _$TextScannerModelImpl(
  status: json['status'] as String?,
  message: json['message'] as String?,
  ocrData: OcrData.fromJson(json['ocr_data'] as Map<String, dynamic>),
  baseImage: json['base_image'] as String?,
);

Map<String, dynamic> _$$TextScannerModelImplToJson(
  _$TextScannerModelImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'ocr_data': instance.ocrData,
  'base_image': instance.baseImage,
};

_$OcrDataImpl _$$OcrDataImplFromJson(Map<String, dynamic> json) =>
    _$OcrDataImpl(text: json['text'] as String?);

Map<String, dynamic> _$$OcrDataImplToJson(_$OcrDataImpl instance) =>
    <String, dynamic>{'text': instance.text};
