// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riveting_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RivetingItemModel _$RivetingItemModelFromJson(Map<String, dynamic> json) {
  return _RivetingItemModel.fromJson(json);
}

/// @nodoc
mixin _$RivetingItemModel {
  @JsonKey(name: 'unit_name')
  String? get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_code')
  String? get unitCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'project')
  String? get project => throw _privateConstructorUsedError;
  @JsonKey(name: 'powder_coating_status')
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this RivetingItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RivetingItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RivetingItemModelCopyWith<RivetingItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RivetingItemModelCopyWith<$Res> {
  factory $RivetingItemModelCopyWith(
    RivetingItemModel value,
    $Res Function(RivetingItemModel) then,
  ) = _$RivetingItemModelCopyWithImpl<$Res, RivetingItemModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'unit_name') String? unitName,
    @JsonKey(name: 'unit_code') String? unitCode,
    @JsonKey(name: 'project') String? project,
    @JsonKey(name: 'powder_coating_status') String? status,
  });
}

/// @nodoc
class _$RivetingItemModelCopyWithImpl<$Res, $Val extends RivetingItemModel>
    implements $RivetingItemModelCopyWith<$Res> {
  _$RivetingItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RivetingItemModel
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
abstract class _$$RivetingItemModelImplCopyWith<$Res>
    implements $RivetingItemModelCopyWith<$Res> {
  factory _$$RivetingItemModelImplCopyWith(
    _$RivetingItemModelImpl value,
    $Res Function(_$RivetingItemModelImpl) then,
  ) = __$$RivetingItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'unit_name') String? unitName,
    @JsonKey(name: 'unit_code') String? unitCode,
    @JsonKey(name: 'project') String? project,
    @JsonKey(name: 'powder_coating_status') String? status,
  });
}

/// @nodoc
class __$$RivetingItemModelImplCopyWithImpl<$Res>
    extends _$RivetingItemModelCopyWithImpl<$Res, _$RivetingItemModelImpl>
    implements _$$RivetingItemModelImplCopyWith<$Res> {
  __$$RivetingItemModelImplCopyWithImpl(
    _$RivetingItemModelImpl _value,
    $Res Function(_$RivetingItemModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RivetingItemModel
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
      _$RivetingItemModelImpl(
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
class _$RivetingItemModelImpl extends _RivetingItemModel {
  const _$RivetingItemModelImpl({
    @JsonKey(name: 'unit_name') this.unitName,
    @JsonKey(name: 'unit_code') this.unitCode,
    @JsonKey(name: 'project') this.project,
    @JsonKey(name: 'powder_coating_status') this.status,
  }) : super._();

  factory _$RivetingItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RivetingItemModelImplFromJson(json);

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
  @JsonKey(name: 'powder_coating_status')
  final String? status;

  @override
  String toString() {
    return 'RivetingItemModel(unitName: $unitName, unitCode: $unitCode, project: $project, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RivetingItemModelImpl &&
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

  /// Create a copy of RivetingItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RivetingItemModelImplCopyWith<_$RivetingItemModelImpl> get copyWith =>
      __$$RivetingItemModelImplCopyWithImpl<_$RivetingItemModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RivetingItemModelImplToJson(this);
  }
}

abstract class _RivetingItemModel extends RivetingItemModel {
  const factory _RivetingItemModel({
    @JsonKey(name: 'unit_name') final String? unitName,
    @JsonKey(name: 'unit_code') final String? unitCode,
    @JsonKey(name: 'project') final String? project,
    @JsonKey(name: 'powder_coating_status') final String? status,
  }) = _$RivetingItemModelImpl;
  const _RivetingItemModel._() : super._();

  factory _RivetingItemModel.fromJson(Map<String, dynamic> json) =
      _$RivetingItemModelImpl.fromJson;

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
  @JsonKey(name: 'powder_coating_status')
  String? get status;

  /// Create a copy of RivetingItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RivetingItemModelImplCopyWith<_$RivetingItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
