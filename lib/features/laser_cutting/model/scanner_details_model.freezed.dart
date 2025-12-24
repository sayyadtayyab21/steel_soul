// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanner_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SacnnerDetailsModel _$SacnnerDetailsModelFromJson(Map<String, dynamic> json) {
  return _SacnnerDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$SacnnerDetailsModel {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'panel_code')
  String? get panelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'project')
  String? get project => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit')
  String? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'laser_cutting_status')
  String? get laserCuttingStatus => throw _privateConstructorUsedError;

  /// Serializes this SacnnerDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SacnnerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SacnnerDetailsModelCopyWith<SacnnerDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SacnnerDetailsModelCopyWith<$Res> {
  factory $SacnnerDetailsModelCopyWith(
    SacnnerDetailsModel value,
    $Res Function(SacnnerDetailsModel) then,
  ) = _$SacnnerDetailsModelCopyWithImpl<$Res, SacnnerDetailsModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'panel_code') String? panelName,
    @JsonKey(name: 'project') String? project,
    @JsonKey(name: 'unit') String? unit,
    @JsonKey(name: 'laser_cutting_status') String? laserCuttingStatus,
  });
}

/// @nodoc
class _$SacnnerDetailsModelCopyWithImpl<$Res, $Val extends SacnnerDetailsModel>
    implements $SacnnerDetailsModelCopyWith<$Res> {
  _$SacnnerDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SacnnerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? panelName = freezed,
    Object? project = freezed,
    Object? unit = freezed,
    Object? laserCuttingStatus = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            panelName: freezed == panelName
                ? _value.panelName
                : panelName // ignore: cast_nullable_to_non_nullable
                      as String?,
            project: freezed == project
                ? _value.project
                : project // ignore: cast_nullable_to_non_nullable
                      as String?,
            unit: freezed == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SacnnerDetailsModelImplCopyWith<$Res>
    implements $SacnnerDetailsModelCopyWith<$Res> {
  factory _$$SacnnerDetailsModelImplCopyWith(
    _$SacnnerDetailsModelImpl value,
    $Res Function(_$SacnnerDetailsModelImpl) then,
  ) = __$$SacnnerDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'panel_code') String? panelName,
    @JsonKey(name: 'project') String? project,
    @JsonKey(name: 'unit') String? unit,
    @JsonKey(name: 'laser_cutting_status') String? laserCuttingStatus,
  });
}

/// @nodoc
class __$$SacnnerDetailsModelImplCopyWithImpl<$Res>
    extends _$SacnnerDetailsModelCopyWithImpl<$Res, _$SacnnerDetailsModelImpl>
    implements _$$SacnnerDetailsModelImplCopyWith<$Res> {
  __$$SacnnerDetailsModelImplCopyWithImpl(
    _$SacnnerDetailsModelImpl _value,
    $Res Function(_$SacnnerDetailsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SacnnerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? panelName = freezed,
    Object? project = freezed,
    Object? unit = freezed,
    Object? laserCuttingStatus = freezed,
  }) {
    return _then(
      _$SacnnerDetailsModelImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        panelName: freezed == panelName
            ? _value.panelName
            : panelName // ignore: cast_nullable_to_non_nullable
                  as String?,
        project: freezed == project
            ? _value.project
            : project // ignore: cast_nullable_to_non_nullable
                  as String?,
        unit: freezed == unit
            ? _value.unit
            : unit // ignore: cast_nullable_to_non_nullable
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
class _$SacnnerDetailsModelImpl extends _SacnnerDetailsModel {
  const _$SacnnerDetailsModelImpl({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'panel_code') this.panelName,
    @JsonKey(name: 'project') this.project,
    @JsonKey(name: 'unit') this.unit,
    @JsonKey(name: 'laser_cutting_status') this.laserCuttingStatus,
  }) : super._();

  factory _$SacnnerDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SacnnerDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'panel_code')
  final String? panelName;
  @override
  @JsonKey(name: 'project')
  final String? project;
  @override
  @JsonKey(name: 'unit')
  final String? unit;
  @override
  @JsonKey(name: 'laser_cutting_status')
  final String? laserCuttingStatus;

  @override
  String toString() {
    return 'SacnnerDetailsModel(name: $name, panelName: $panelName, project: $project, unit: $unit, laserCuttingStatus: $laserCuttingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SacnnerDetailsModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.panelName, panelName) ||
                other.panelName == panelName) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.laserCuttingStatus, laserCuttingStatus) ||
                other.laserCuttingStatus == laserCuttingStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    panelName,
    project,
    unit,
    laserCuttingStatus,
  );

  /// Create a copy of SacnnerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SacnnerDetailsModelImplCopyWith<_$SacnnerDetailsModelImpl> get copyWith =>
      __$$SacnnerDetailsModelImplCopyWithImpl<_$SacnnerDetailsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SacnnerDetailsModelImplToJson(this);
  }
}

abstract class _SacnnerDetailsModel extends SacnnerDetailsModel {
  const factory _SacnnerDetailsModel({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'panel_code') final String? panelName,
    @JsonKey(name: 'project') final String? project,
    @JsonKey(name: 'unit') final String? unit,
    @JsonKey(name: 'laser_cutting_status') final String? laserCuttingStatus,
  }) = _$SacnnerDetailsModelImpl;
  const _SacnnerDetailsModel._() : super._();

  factory _SacnnerDetailsModel.fromJson(Map<String, dynamic> json) =
      _$SacnnerDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'panel_code')
  String? get panelName;
  @override
  @JsonKey(name: 'project')
  String? get project;
  @override
  @JsonKey(name: 'unit')
  String? get unit;
  @override
  @JsonKey(name: 'laser_cutting_status')
  String? get laserCuttingStatus;

  /// Create a copy of SacnnerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SacnnerDetailsModelImplCopyWith<_$SacnnerDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
