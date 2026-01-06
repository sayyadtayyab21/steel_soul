// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'powder_coating_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PowderCoatingItemModel _$PowderCoatingItemModelFromJson(
  Map<String, dynamic> json,
) {
  return _PowderCoatingItemModel.fromJson(json);
}

/// @nodoc
mixin _$PowderCoatingItemModel {
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
  @JsonKey(name: 'powder_coating_status')
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this PowderCoatingItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PowderCoatingItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PowderCoatingItemModelCopyWith<PowderCoatingItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PowderCoatingItemModelCopyWith<$Res> {
  factory $PowderCoatingItemModelCopyWith(
    PowderCoatingItemModel value,
    $Res Function(PowderCoatingItemModel) then,
  ) = _$PowderCoatingItemModelCopyWithImpl<$Res, PowderCoatingItemModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'unit_name') String? unitName,
    @JsonKey(name: 'unit_code') String? unitCode,
    @JsonKey(name: 'project') String? project,
    @JsonKey(name: 'total_panels') int? totalPanels,
    @JsonKey(name: 'scanned_panels') int? scannedPanels,
    @JsonKey(name: 'powder_coating_status') String? status,
  });
}

/// @nodoc
class _$PowderCoatingItemModelCopyWithImpl<
  $Res,
  $Val extends PowderCoatingItemModel
>
    implements $PowderCoatingItemModelCopyWith<$Res> {
  _$PowderCoatingItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PowderCoatingItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitName = freezed,
    Object? unitCode = freezed,
    Object? project = freezed,
    Object? totalPanels = freezed,
    Object? scannedPanels = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _value.copyWith(
            unitName:
                freezed == unitName
                    ? _value.unitName
                    : unitName // ignore: cast_nullable_to_non_nullable
                        as String?,
            unitCode:
                freezed == unitCode
                    ? _value.unitCode
                    : unitCode // ignore: cast_nullable_to_non_nullable
                        as String?,
            project:
                freezed == project
                    ? _value.project
                    : project // ignore: cast_nullable_to_non_nullable
                        as String?,
            totalPanels:
                freezed == totalPanels
                    ? _value.totalPanels
                    : totalPanels // ignore: cast_nullable_to_non_nullable
                        as int?,
            scannedPanels:
                freezed == scannedPanels
                    ? _value.scannedPanels
                    : scannedPanels // ignore: cast_nullable_to_non_nullable
                        as int?,
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PowderCoatingItemModelImplCopyWith<$Res>
    implements $PowderCoatingItemModelCopyWith<$Res> {
  factory _$$PowderCoatingItemModelImplCopyWith(
    _$PowderCoatingItemModelImpl value,
    $Res Function(_$PowderCoatingItemModelImpl) then,
  ) = __$$PowderCoatingItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'unit_name') String? unitName,
    @JsonKey(name: 'unit_code') String? unitCode,
    @JsonKey(name: 'project') String? project,
    @JsonKey(name: 'total_panels') int? totalPanels,
    @JsonKey(name: 'scanned_panels') int? scannedPanels,
    @JsonKey(name: 'powder_coating_status') String? status,
  });
}

/// @nodoc
class __$$PowderCoatingItemModelImplCopyWithImpl<$Res>
    extends
        _$PowderCoatingItemModelCopyWithImpl<$Res, _$PowderCoatingItemModelImpl>
    implements _$$PowderCoatingItemModelImplCopyWith<$Res> {
  __$$PowderCoatingItemModelImplCopyWithImpl(
    _$PowderCoatingItemModelImpl _value,
    $Res Function(_$PowderCoatingItemModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PowderCoatingItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitName = freezed,
    Object? unitCode = freezed,
    Object? project = freezed,
    Object? totalPanels = freezed,
    Object? scannedPanels = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _$PowderCoatingItemModelImpl(
        unitName:
            freezed == unitName
                ? _value.unitName
                : unitName // ignore: cast_nullable_to_non_nullable
                    as String?,
        unitCode:
            freezed == unitCode
                ? _value.unitCode
                : unitCode // ignore: cast_nullable_to_non_nullable
                    as String?,
        project:
            freezed == project
                ? _value.project
                : project // ignore: cast_nullable_to_non_nullable
                    as String?,
        totalPanels:
            freezed == totalPanels
                ? _value.totalPanels
                : totalPanels // ignore: cast_nullable_to_non_nullable
                    as int?,
        scannedPanels:
            freezed == scannedPanels
                ? _value.scannedPanels
                : scannedPanels // ignore: cast_nullable_to_non_nullable
                    as int?,
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PowderCoatingItemModelImpl extends _PowderCoatingItemModel {
  const _$PowderCoatingItemModelImpl({
    @JsonKey(name: 'unit_name') this.unitName,
    @JsonKey(name: 'unit_code') this.unitCode,
    @JsonKey(name: 'project') this.project,
    @JsonKey(name: 'total_panels') this.totalPanels,
    @JsonKey(name: 'scanned_panels') this.scannedPanels,
    @JsonKey(name: 'powder_coating_status') this.status,
  }) : super._();

  factory _$PowderCoatingItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PowderCoatingItemModelImplFromJson(json);

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
  @JsonKey(name: 'powder_coating_status')
  final String? status;

  @override
  String toString() {
    return 'PowderCoatingItemModel(unitName: $unitName, unitCode: $unitCode, project: $project, totalPanels: $totalPanels, scannedPanels: $scannedPanels, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PowderCoatingItemModelImpl &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.unitCode, unitCode) ||
                other.unitCode == unitCode) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.totalPanels, totalPanels) ||
                other.totalPanels == totalPanels) &&
            (identical(other.scannedPanels, scannedPanels) ||
                other.scannedPanels == scannedPanels) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    unitName,
    unitCode,
    project,
    totalPanels,
    scannedPanels,
    status,
  );

  /// Create a copy of PowderCoatingItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PowderCoatingItemModelImplCopyWith<_$PowderCoatingItemModelImpl>
  get copyWith =>
      __$$PowderCoatingItemModelImplCopyWithImpl<_$PowderCoatingItemModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PowderCoatingItemModelImplToJson(this);
  }
}

abstract class _PowderCoatingItemModel extends PowderCoatingItemModel {
  const factory _PowderCoatingItemModel({
    @JsonKey(name: 'unit_name') final String? unitName,
    @JsonKey(name: 'unit_code') final String? unitCode,
    @JsonKey(name: 'project') final String? project,
    @JsonKey(name: 'total_panels') final int? totalPanels,
    @JsonKey(name: 'scanned_panels') final int? scannedPanels,
    @JsonKey(name: 'powder_coating_status') final String? status,
  }) = _$PowderCoatingItemModelImpl;
  const _PowderCoatingItemModel._() : super._();

  factory _PowderCoatingItemModel.fromJson(Map<String, dynamic> json) =
      _$PowderCoatingItemModelImpl.fromJson;

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
  @JsonKey(name: 'powder_coating_status')
  String? get status;

  /// Create a copy of PowderCoatingItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PowderCoatingItemModelImplCopyWith<_$PowderCoatingItemModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
