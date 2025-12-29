import 'package:freezed_annotation/freezed_annotation.dart';
part 'plastic_film_item_model.freezed.dart';
part 'plastic_film_item_model.g.dart';


@freezed
class PlasticFilmItemModel with _$PlasticFilmItemModel{
  const PlasticFilmItemModel._();
  const factory PlasticFilmItemModel({
   @JsonKey(name: 'unit_name')String? unitName,
   @JsonKey(name: 'unit_code')String? unitCode,
   @JsonKey(name: 'project')String? project,
 
   @JsonKey(name: 'plastic_film_status')String? status
  })=_PlasticFilmItemModel;

  factory PlasticFilmItemModel.fromJson(Map<String, dynamic>json)=>_$PlasticFilmItemModelFromJson(json);
}