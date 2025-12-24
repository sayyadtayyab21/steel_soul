import 'package:freezed_annotation/freezed_annotation.dart';
part 'scanner_details_model.freezed.dart';
part 'scanner_details_model.g.dart';


@freezed
class SacnnerDetailsModel with _$SacnnerDetailsModel{
  const SacnnerDetailsModel._();
  const factory SacnnerDetailsModel({
   @JsonKey(name: 'name')String? name,
   @JsonKey(name: 'panel_code')String? panelName,
   @JsonKey(name: 'project')String? project,
      @JsonKey(name: 'unit')String? unit,
 
   @JsonKey(name: 'puf_status')String? status
  })=_SacnnerDetailsModel;

  factory SacnnerDetailsModel.fromJson(Map<String, dynamic>json)=>_$SacnnerDetailsModelFromJson(json);
}