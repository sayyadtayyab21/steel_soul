// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plastic_film_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PlasticFilmItemModel _$PlasticFilmItemModelFromJson(Map<String, dynamic> json) {
  return _PlasticFilmItemModel.fromJson(json);
}

/// @nodoc
mixin _$PlasticFilmItemModel {
  @JsonKey(name: 'unit_name')
  String? get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_code')
  String? get unitCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'project')
  String? get project => throw _privateConstructorUsedError;
  @JsonKey(name: 'plastic_film_status')
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this PlasticFilmItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlasticFilmItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlasticFilmItemModelCopyWith<PlasticFilmItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlasticFilmItemModelCopyWith<$Res> {
  factory $PlasticFilmItemModelCopyWith(
    PlasticFilmItemModel value,
    $Res Function(PlasticFilmItemModel) then,
  ) = _$PlasticFilmItemModelCopyWithImpl<$Res, PlasticFilmItemModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'unit_name') String? unitName,
    @JsonKey(name: 'unit_code') String? unitCode,
    @JsonKey(name: 'project') String? project,
    @JsonKey(name: 'plastic_film_status') String? status,
  });
}

/// @nodoc
class _$PlasticFilmItemModelCopyWithImpl<
  $Res,
  $Val extends PlasticFilmItemModel
>
    implements $PlasticFilmItemModelCopyWith<$Res> {
  _$PlasticFilmItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlasticFilmItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitName = freezed,
    Object? unitCode = freezed,
    Object? project = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _value.copyWith(
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
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlasticFilmItemModelImplCopyWith<$Res>
    implements $PlasticFilmItemModelCopyWith<$Res> {
  factory _$$PlasticFilmItemModelImplCopyWith(
    _$PlasticFilmItemModelImpl value,
    $Res Function(_$PlasticFilmItemModelImpl) then,
  ) = __$$PlasticFilmItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'unit_name') String? unitName,
    @JsonKey(name: 'unit_code') String? unitCode,
    @JsonKey(name: 'project') String? project,
    @JsonKey(name: 'plastic_film_status') String? status,
  });
}

/// @nodoc
class __$$PlasticFilmItemModelImplCopyWithImpl<$Res>
    extends _$PlasticFilmItemModelCopyWithImpl<$Res, _$PlasticFilmItemModelImpl>
    implements _$$PlasticFilmItemModelImplCopyWith<$Res> {
  __$$PlasticFilmItemModelImplCopyWithImpl(
    _$PlasticFilmItemModelImpl _value,
    $Res Function(_$PlasticFilmItemModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlasticFilmItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitName = freezed,
    Object? unitCode = freezed,
    Object? project = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _$PlasticFilmItemModelImpl(
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
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlasticFilmItemModelImpl extends _PlasticFilmItemModel {
  const _$PlasticFilmItemModelImpl({
    @JsonKey(name: 'unit_name') this.unitName,
    @JsonKey(name: 'unit_code') this.unitCode,
    @JsonKey(name: 'project') this.project,
    @JsonKey(name: 'plastic_film_status') this.status,
  }) : super._();

  factory _$PlasticFilmItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlasticFilmItemModelImplFromJson(json);

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
  @JsonKey(name: 'plastic_film_status')
  final String? status;

  @override
  String toString() {
    return 'PlasticFilmItemModel(unitName: $unitName, unitCode: $unitCode, project: $project, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlasticFilmItemModelImpl &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.unitCode, unitCode) ||
                other.unitCode == unitCode) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, unitName, unitCode, project, status);

  /// Create a copy of PlasticFilmItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlasticFilmItemModelImplCopyWith<_$PlasticFilmItemModelImpl>
  get copyWith =>
      __$$PlasticFilmItemModelImplCopyWithImpl<_$PlasticFilmItemModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlasticFilmItemModelImplToJson(this);
  }
}

abstract class _PlasticFilmItemModel extends PlasticFilmItemModel {
  const factory _PlasticFilmItemModel({
    @JsonKey(name: 'unit_name') final String? unitName,
    @JsonKey(name: 'unit_code') final String? unitCode,
    @JsonKey(name: 'project') final String? project,
    @JsonKey(name: 'plastic_film_status') final String? status,
  }) = _$PlasticFilmItemModelImpl;
  const _PlasticFilmItemModel._() : super._();

  factory _PlasticFilmItemModel.fromJson(Map<String, dynamic> json) =
      _$PlasticFilmItemModelImpl.fromJson;

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
  @JsonKey(name: 'plastic_film_status')
  String? get status;

  /// Create a copy of PlasticFilmItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlasticFilmItemModelImplCopyWith<_$PlasticFilmItemModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
