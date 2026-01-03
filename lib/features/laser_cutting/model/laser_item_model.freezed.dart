// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laser_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LaserItemModel _$LaserItemModelFromJson(Map<String, dynamic> json) {
  return _LaserItemModel.fromJson(json);
}

/// @nodoc
mixin _$LaserItemModel {
  @JsonKey(name: 'unit_name')
  String? get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_code')
  String? get unitCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'project')
  String? get project => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_panels')
  int? get totalPanels => throw _privateConstructorUsedError;
  @JsonKey(name: 'scanned_panels')
  int? get scannedPanels => throw _privateConstructorUsedError;
  @JsonKey(name: 'laser_cutting_status')
  String? get laserCuttingStatus => throw _privateConstructorUsedError;

  /// Serializes this LaserItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LaserItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LaserItemModelCopyWith<LaserItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaserItemModelCopyWith<$Res> {
  factory $LaserItemModelCopyWith(
          LaserItemModel value, $Res Function(LaserItemModel) then) =
      _$LaserItemModelCopyWithImpl<$Res, LaserItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'unit_name') String? unitName,
      @JsonKey(name: 'unit_code') String? unitCode,
      @JsonKey(name: 'project') String? project,
      @JsonKey(name: 'total_panels') int? totalPanels,
      @JsonKey(name: 'scanned_panels') int? scannedPanels,
      @JsonKey(name: 'laser_cutting_status') String? laserCuttingStatus});
}

/// @nodoc
class _$LaserItemModelCopyWithImpl<$Res, $Val extends LaserItemModel>
    implements $LaserItemModelCopyWith<$Res> {
  _$LaserItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LaserItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitName = freezed,
    Object? unitCode = freezed,
    Object? project = freezed,
    Object? totalPanels = freezed,
    Object? scannedPanels = freezed,
    Object? laserCuttingStatus = freezed,
  }) {
    return _then(_value.copyWith(
      unitName: freezed == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCode: freezed == unitCode
          ? _value.unitCode
          : unitCode // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPanels: freezed == totalPanels
          ? _value.totalPanels
          : totalPanels // ignore: cast_nullable_to_non_nullable
              as int?,
      scannedPanels: freezed == scannedPanels
          ? _value.scannedPanels
          : scannedPanels // ignore: cast_nullable_to_non_nullable
              as int?,
      laserCuttingStatus: freezed == laserCuttingStatus
          ? _value.laserCuttingStatus
          : laserCuttingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LaserItemModelImplCopyWith<$Res>
    implements $LaserItemModelCopyWith<$Res> {
  factory _$$LaserItemModelImplCopyWith(_$LaserItemModelImpl value,
          $Res Function(_$LaserItemModelImpl) then) =
      __$$LaserItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'unit_name') String? unitName,
      @JsonKey(name: 'unit_code') String? unitCode,
      @JsonKey(name: 'project') String? project,
      @JsonKey(name: 'total_panels') int? totalPanels,
      @JsonKey(name: 'scanned_panels') int? scannedPanels,
      @JsonKey(name: 'laser_cutting_status') String? laserCuttingStatus});
}

/// @nodoc
class __$$LaserItemModelImplCopyWithImpl<$Res>
    extends _$LaserItemModelCopyWithImpl<$Res, _$LaserItemModelImpl>
    implements _$$LaserItemModelImplCopyWith<$Res> {
  __$$LaserItemModelImplCopyWithImpl(
      _$LaserItemModelImpl _value, $Res Function(_$LaserItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LaserItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitName = freezed,
    Object? unitCode = freezed,
    Object? project = freezed,
    Object? totalPanels = freezed,
    Object? scannedPanels = freezed,
    Object? laserCuttingStatus = freezed,
  }) {
    return _then(_$LaserItemModelImpl(
      unitName: freezed == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitCode: freezed == unitCode
          ? _value.unitCode
          : unitCode // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPanels: freezed == totalPanels
          ? _value.totalPanels
          : totalPanels // ignore: cast_nullable_to_non_nullable
              as int?,
      scannedPanels: freezed == scannedPanels
          ? _value.scannedPanels
          : scannedPanels // ignore: cast_nullable_to_non_nullable
              as int?,
      laserCuttingStatus: freezed == laserCuttingStatus
          ? _value.laserCuttingStatus
          : laserCuttingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaserItemModelImpl extends _LaserItemModel {
  const _$LaserItemModelImpl(
      {@JsonKey(name: 'unit_name') this.unitName,
      @JsonKey(name: 'unit_code') this.unitCode,
      @JsonKey(name: 'project') this.project,
      @JsonKey(name: 'total_panels') this.totalPanels,
      @JsonKey(name: 'scanned_panels') this.scannedPanels,
      @JsonKey(name: 'laser_cutting_status') this.laserCuttingStatus})
      : super._();

  factory _$LaserItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaserItemModelImplFromJson(json);

  @override
  @JsonKey(name: 'unit_name')
  final String? unitName;
  @override
  @JsonKey(name: 'unit_code')
  final String? unitCode;
  @override
  @JsonKey(name: 'project')
  final String? project;
  @override
  @JsonKey(name: 'total_panels')
  final int? totalPanels;
  @override
  @JsonKey(name: 'scanned_panels')
  final int? scannedPanels;
  @override
  @JsonKey(name: 'laser_cutting_status')
  final String? laserCuttingStatus;

  @override
  String toString() {
    return 'LaserItemModel(unitName: $unitName, unitCode: $unitCode, project: $project, totalPanels: $totalPanels, scannedPanels: $scannedPanels, laserCuttingStatus: $laserCuttingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaserItemModelImpl &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.unitCode, unitCode) ||
                other.unitCode == unitCode) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.totalPanels, totalPanels) ||
                other.totalPanels == totalPanels) &&
            (identical(other.scannedPanels, scannedPanels) ||
                other.scannedPanels == scannedPanels) &&
            (identical(other.laserCuttingStatus, laserCuttingStatus) ||
                other.laserCuttingStatus == laserCuttingStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, unitName, unitCode, project,
      totalPanels, scannedPanels, laserCuttingStatus);

  /// Create a copy of LaserItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LaserItemModelImplCopyWith<_$LaserItemModelImpl> get copyWith =>
      __$$LaserItemModelImplCopyWithImpl<_$LaserItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaserItemModelImplToJson(
      this,
    );
  }
}

abstract class _LaserItemModel extends LaserItemModel {
  const factory _LaserItemModel(
      {@JsonKey(name: 'unit_name') final String? unitName,
      @JsonKey(name: 'unit_code') final String? unitCode,
      @JsonKey(name: 'project') final String? project,
      @JsonKey(name: 'total_panels') final int? totalPanels,
      @JsonKey(name: 'scanned_panels') final int? scannedPanels,
      @JsonKey(name: 'laser_cutting_status')
      final String? laserCuttingStatus}) = _$LaserItemModelImpl;
  const _LaserItemModel._() : super._();

  factory _LaserItemModel.fromJson(Map<String, dynamic> json) =
      _$LaserItemModelImpl.fromJson;

  @override
  @JsonKey(name: 'unit_name')
  String? get unitName;
  @override
  @JsonKey(name: 'unit_code')
  String? get unitCode;
  @override
  @JsonKey(name: 'project')
  String? get project;
  @override
  @JsonKey(name: 'total_panels')
  int? get totalPanels;
  @override
  @JsonKey(name: 'scanned_panels')
  int? get scannedPanels;
  @override
  @JsonKey(name: 'laser_cutting_status')
  String? get laserCuttingStatus;

  /// Create a copy of LaserItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LaserItemModelImplCopyWith<_$LaserItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
