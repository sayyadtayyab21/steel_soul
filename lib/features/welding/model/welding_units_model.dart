import 'package:freezed_annotation/freezed_annotation.dart';
part 'welding_units_model.freezed.dart';
part 'welding_units_model.g.dart';


@freezed
class WeldingUnitsModel with _$WeldingUnitsModel{
  const WeldingUnitsModel._();
  const factory WeldingUnitsModel({
   @JsonKey(name: 'unit_name')String? unitName,
   @JsonKey(name: 'unit_code')String? unitCode,
   @JsonKey(name: 'project')String? project,
    @JsonKey(name: 'total_panels')int? totalPanels,
     @JsonKey(name: 'scanned_panels')int? scannedPanels,
 
   @JsonKey(name: 'welding_status')String? status
  })=_WeldingUnitsModel;

  factory WeldingUnitsModel.fromJson(Map<String, dynamic>json)=>_$WeldingUnitsModelFromJson(json);
}