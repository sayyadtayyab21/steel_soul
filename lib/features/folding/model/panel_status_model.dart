import 'package:freezed_annotation/freezed_annotation.dart';
part 'panel_status_model.freezed.dart';
part 'panel_status_model.g.dart';


@freezed
class PanelStatusModel with _$PanelStatusModel{
  const PanelStatusModel._();
  const factory PanelStatusModel({
   @JsonKey(name: 'status')String? status,
   @JsonKey(name: 'message')String? message,

  })=_PanelStatusModel;

  factory PanelStatusModel.fromJson(Map<String, dynamic>json)=>_$PanelStatusModelFromJson(json);
}
