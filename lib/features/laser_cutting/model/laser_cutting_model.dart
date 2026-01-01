import 'package:freezed_annotation/freezed_annotation.dart';
part 'laser_cutting_model.freezed.dart';
part 'laser_cutting_model.g.dart';

@freezed
class LaserCuttingList with _$LaserCuttingList {
  const LaserCuttingList._();
  const factory LaserCuttingList({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'project_id') String? projectId,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'customer_phone_number') String? customerPhoneNumber,
    @JsonKey(name: 'laser_cutting_status') String? laserCuttingStatus,
  }) = _LaserCuttingList;

  factory LaserCuttingList.fromJson(Map<String, dynamic> json) =>
      _$LaserCuttingListFromJson(json);
}
