import 'package:freezed_annotation/freezed_annotation.dart';

part 'laser_cutting_model.freezed.dart';
part 'laser_cutting_model.g.dart';

@freezed
class LaserCuttingResponse with _$LaserCuttingResponse {
  const factory LaserCuttingResponse({
    required List<LaserCuttingList> message,
  }) = _LaserCuttingResponse;

  factory LaserCuttingResponse.fromJson(Map<String, dynamic> json) =>
      _$LaserCuttingResponseFromJson(json);
}

@freezed
class LaserCuttingList with _$LaserCuttingList {
  const factory LaserCuttingList({
    String? name,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'project_id') String? projectId,
    String? date,
    String? time,
    @JsonKey(name: 'customer_phone_number') String? customerPhoneNumber,
    @JsonKey(name: 'laser_cutting_status') String? laserCuttingStatus,

    @JsonKey(name: 'MS 0.6 mm') Ms06? ms06,
    @JsonKey(name: 'MS 0.8 mm') Ms08? ms08,
    @JsonKey(name: 'MS 1.0 mm') Ms10? ms10,
    @JsonKey(name: 'MS 1.2 mm') Ms12? ms12,
    @JsonKey(name: 'SS 0.8 mm') Ss08? ss08,
    @JsonKey(name: 'SS 1.0 mm') Ss10? ss10,
  }) = _LaserCuttingList;

  factory LaserCuttingList.fromJson(Map<String, dynamic> json) =>
      _$LaserCuttingListFromJson(json);
}

@freezed
class Ms06 with _$Ms06 {
  const factory Ms06({
    @JsonKey(name: 'ms_0_6_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ms_0_6_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ms_0_6_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ms_0_6_mm_total_sheets') int? totalSheets,
  }) = _Ms06;

  factory Ms06.fromJson(Map<String, dynamic> json) => _$Ms06FromJson(json);
}

@freezed
class Ms08 with _$Ms08 {
  const factory Ms08({
    @JsonKey(name: 'ms_0_8_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ms_0_8_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ms_0_8_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ms_0_8_mm_total_sheets') int? totalSheets,
  }) = _Ms08;

  factory Ms08.fromJson(Map<String, dynamic> json) => _$Ms08FromJson(json);
}

@freezed
class Ms10 with _$Ms10 {
  const factory Ms10({
    @JsonKey(name: 'ms_1_0_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ms_1_0_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ms_1_0_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ms_1_0_mm_total_sheets') int? totalSheets,
  }) = _Ms10;

  factory Ms10.fromJson(Map<String, dynamic> json) => _$Ms10FromJson(json);
}

@freezed
class Ms12 with _$Ms12 {
  const factory Ms12({
    @JsonKey(name: 'ms_1_2_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ms_1_2_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ms_1_2_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ms_1_2_mm_total_sheets') int? totalSheets,
  }) = _Ms12;

  factory Ms12.fromJson(Map<String, dynamic> json) => _$Ms12FromJson(json);
}

@freezed
class Ss08 with _$Ss08 {
  const factory Ss08({
    @JsonKey(name: 'ss_0_8_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ss_0_8_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ss_0_8_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ss_0_8_mm_total_sheets') int? totalSheets,
  }) = _Ss08;

  factory Ss08.fromJson(Map<String, dynamic> json) => _$Ss08FromJson(json);
}

@freezed
class Ss10 with _$Ss10 {
  const factory Ss10({
    @JsonKey(name: 'ss_1_0_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ss_1_0_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ss_1_0_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ss_1_0_mm_total_sheets') int? totalSheets,
  }) = _Ss10;

  factory Ss10.fromJson(Map<String, dynamic> json) => _$Ss10FromJson(json);
}