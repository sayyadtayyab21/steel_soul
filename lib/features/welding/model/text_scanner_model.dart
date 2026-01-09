import 'package:freezed_annotation/freezed_annotation.dart';
part 'text_scanner_model.freezed.dart';
part 'text_scanner_model.g.dart';


@freezed
class TextScannerModel with _$TextScannerModel{
  const TextScannerModel._();
  const factory TextScannerModel({
   @JsonKey(name: 'status')String? status,
   @JsonKey(name: 'message')String? message,
   @JsonKey(name: 'ocr_data')required OcrData ocrData,
   @JsonKey(name: 'base_image') String? baseImage,

 

  })=_TextScannerModel;

  factory TextScannerModel.fromJson(Map<String, dynamic>json)=>_$TextScannerModelFromJson(json);
}
@freezed
class OcrData with _$OcrData {
  const factory OcrData({
 @JsonKey(name: 'text')String? text,
  }) = _OcrData;

  factory OcrData.fromJson(Map<String, dynamic> json) =>
      _$OcrDataFromJson(json);
}