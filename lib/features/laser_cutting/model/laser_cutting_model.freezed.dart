// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laser_cutting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LaserCuttingList _$LaserCuttingListFromJson(Map<String, dynamic> json) {
  return _LaserCuttingList.fromJson(json);
}

/// @nodoc
mixin _$LaserCuttingList {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  String? get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'time')
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_sheet')
  int? get fullSheetCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'half_sheet')
  int? get halfSheetCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'quarter_sheet')
  int? get quarterSheetCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_phone_number')
  String? get customerPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'laser_cutting_status')
  String? get laserCuttingStatus => throw _privateConstructorUsedError;

  /// Serializes this LaserCuttingList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LaserCuttingListCopyWith<LaserCuttingList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaserCuttingListCopyWith<$Res> {
  factory $LaserCuttingListCopyWith(
    LaserCuttingList value,
    $Res Function(LaserCuttingList) then,
  ) = _$LaserCuttingListCopyWithImpl<$Res, LaserCuttingList>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'project_id') String? projectId,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'full_sheet') int? fullSheetCount,
    @JsonKey(name: 'half_sheet') int? halfSheetCount,
    @JsonKey(name: 'quarter_sheet') int? quarterSheetCount,
    @JsonKey(name: 'customer_phone_number') String? customerPhoneNumber,
    @JsonKey(name: 'laser_cutting_status') String? laserCuttingStatus,
  });
}

/// @nodoc
class _$LaserCuttingListCopyWithImpl<$Res, $Val extends LaserCuttingList>
    implements $LaserCuttingListCopyWith<$Res> {
  _$LaserCuttingListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? customerName = freezed,
    Object? projectId = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? fullSheetCount = freezed,
    Object? halfSheetCount = freezed,
    Object? quarterSheetCount = freezed,
    Object? customerPhoneNumber = freezed,
    Object? laserCuttingStatus = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            customerName: freezed == customerName
                ? _value.customerName
                : customerName // ignore: cast_nullable_to_non_nullable
                      as String?,
            projectId: freezed == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as String?,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String?,
            time: freezed == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                      as String?,
            fullSheetCount: freezed == fullSheetCount
                ? _value.fullSheetCount
                : fullSheetCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            halfSheetCount: freezed == halfSheetCount
                ? _value.halfSheetCount
                : halfSheetCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            quarterSheetCount: freezed == quarterSheetCount
                ? _value.quarterSheetCount
                : quarterSheetCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            customerPhoneNumber: freezed == customerPhoneNumber
                ? _value.customerPhoneNumber
                : customerPhoneNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            laserCuttingStatus: freezed == laserCuttingStatus
                ? _value.laserCuttingStatus
                : laserCuttingStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LaserCuttingListImplCopyWith<$Res>
    implements $LaserCuttingListCopyWith<$Res> {
  factory _$$LaserCuttingListImplCopyWith(
    _$LaserCuttingListImpl value,
    $Res Function(_$LaserCuttingListImpl) then,
  ) = __$$LaserCuttingListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'project_id') String? projectId,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'full_sheet') int? fullSheetCount,
    @JsonKey(name: 'half_sheet') int? halfSheetCount,
    @JsonKey(name: 'quarter_sheet') int? quarterSheetCount,
    @JsonKey(name: 'customer_phone_number') String? customerPhoneNumber,
    @JsonKey(name: 'laser_cutting_status') String? laserCuttingStatus,
  });
}

/// @nodoc
class __$$LaserCuttingListImplCopyWithImpl<$Res>
    extends _$LaserCuttingListCopyWithImpl<$Res, _$LaserCuttingListImpl>
    implements _$$LaserCuttingListImplCopyWith<$Res> {
  __$$LaserCuttingListImplCopyWithImpl(
    _$LaserCuttingListImpl _value,
    $Res Function(_$LaserCuttingListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? customerName = freezed,
    Object? projectId = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? fullSheetCount = freezed,
    Object? halfSheetCount = freezed,
    Object? quarterSheetCount = freezed,
    Object? customerPhoneNumber = freezed,
    Object? laserCuttingStatus = freezed,
  }) {
    return _then(
      _$LaserCuttingListImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        customerName: freezed == customerName
            ? _value.customerName
            : customerName // ignore: cast_nullable_to_non_nullable
                  as String?,
        projectId: freezed == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String?,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String?,
        time: freezed == time
            ? _value.time
            : time // ignore: cast_nullable_to_non_nullable
                  as String?,
        fullSheetCount: freezed == fullSheetCount
            ? _value.fullSheetCount
            : fullSheetCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        halfSheetCount: freezed == halfSheetCount
            ? _value.halfSheetCount
            : halfSheetCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        quarterSheetCount: freezed == quarterSheetCount
            ? _value.quarterSheetCount
            : quarterSheetCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        customerPhoneNumber: freezed == customerPhoneNumber
            ? _value.customerPhoneNumber
            : customerPhoneNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        laserCuttingStatus: freezed == laserCuttingStatus
            ? _value.laserCuttingStatus
            : laserCuttingStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LaserCuttingListImpl extends _LaserCuttingList {
  const _$LaserCuttingListImpl({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'customer_name') this.customerName,
    @JsonKey(name: 'project_id') this.projectId,
    @JsonKey(name: 'date') this.date,
    @JsonKey(name: 'time') this.time,
    @JsonKey(name: 'full_sheet') this.fullSheetCount,
    @JsonKey(name: 'half_sheet') this.halfSheetCount,
    @JsonKey(name: 'quarter_sheet') this.quarterSheetCount,
    @JsonKey(name: 'customer_phone_number') this.customerPhoneNumber,
    @JsonKey(name: 'laser_cutting_status') this.laserCuttingStatus,
  }) : super._();

  factory _$LaserCuttingListImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaserCuttingListImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'customer_name')
  final String? customerName;
  @override
  @JsonKey(name: 'project_id')
  final String? projectId;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'time')
  final String? time;
  @override
  @JsonKey(name: 'full_sheet')
  final int? fullSheetCount;
  @override
  @JsonKey(name: 'half_sheet')
  final int? halfSheetCount;
  @override
  @JsonKey(name: 'quarter_sheet')
  final int? quarterSheetCount;
  @override
  @JsonKey(name: 'customer_phone_number')
  final String? customerPhoneNumber;
  @override
  @JsonKey(name: 'laser_cutting_status')
  final String? laserCuttingStatus;

  @override
  String toString() {
    return 'LaserCuttingList(name: $name, customerName: $customerName, projectId: $projectId, date: $date, time: $time, fullSheetCount: $fullSheetCount, halfSheetCount: $halfSheetCount, quarterSheetCount: $quarterSheetCount, customerPhoneNumber: $customerPhoneNumber, laserCuttingStatus: $laserCuttingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaserCuttingListImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.fullSheetCount, fullSheetCount) ||
                other.fullSheetCount == fullSheetCount) &&
            (identical(other.halfSheetCount, halfSheetCount) ||
                other.halfSheetCount == halfSheetCount) &&
            (identical(other.quarterSheetCount, quarterSheetCount) ||
                other.quarterSheetCount == quarterSheetCount) &&
            (identical(other.customerPhoneNumber, customerPhoneNumber) ||
                other.customerPhoneNumber == customerPhoneNumber) &&
            (identical(other.laserCuttingStatus, laserCuttingStatus) ||
                other.laserCuttingStatus == laserCuttingStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    customerName,
    projectId,
    date,
    time,
    fullSheetCount,
    halfSheetCount,
    quarterSheetCount,
    customerPhoneNumber,
    laserCuttingStatus,
  );

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LaserCuttingListImplCopyWith<_$LaserCuttingListImpl> get copyWith =>
      __$$LaserCuttingListImplCopyWithImpl<_$LaserCuttingListImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LaserCuttingListImplToJson(this);
  }
}

abstract class _LaserCuttingList extends LaserCuttingList {
  const factory _LaserCuttingList({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'customer_name') final String? customerName,
    @JsonKey(name: 'project_id') final String? projectId,
    @JsonKey(name: 'date') final String? date,
    @JsonKey(name: 'time') final String? time,
    @JsonKey(name: 'full_sheet') final int? fullSheetCount,
    @JsonKey(name: 'half_sheet') final int? halfSheetCount,
    @JsonKey(name: 'quarter_sheet') final int? quarterSheetCount,
    @JsonKey(name: 'customer_phone_number') final String? customerPhoneNumber,
    @JsonKey(name: 'laser_cutting_status') final String? laserCuttingStatus,
  }) = _$LaserCuttingListImpl;
  const _LaserCuttingList._() : super._();

  factory _LaserCuttingList.fromJson(Map<String, dynamic> json) =
      _$LaserCuttingListImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'customer_name')
  String? get customerName;
  @override
  @JsonKey(name: 'project_id')
  String? get projectId;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'time')
  String? get time;
  @override
  @JsonKey(name: 'full_sheet')
  int? get fullSheetCount;
  @override
  @JsonKey(name: 'half_sheet')
  int? get halfSheetCount;
  @override
  @JsonKey(name: 'quarter_sheet')
  int? get quarterSheetCount;
  @override
  @JsonKey(name: 'customer_phone_number')
  String? get customerPhoneNumber;
  @override
  @JsonKey(name: 'laser_cutting_status')
  String? get laserCuttingStatus;

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LaserCuttingListImplCopyWith<_$LaserCuttingListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
