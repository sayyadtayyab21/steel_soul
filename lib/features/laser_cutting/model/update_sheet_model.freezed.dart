// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_sheet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateSheetModel _$UpdateSheetModelFromJson(Map<String, dynamic> json) {
  return _UpdateSheetModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateSheetModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this UpdateSheetModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSheetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSheetModelCopyWith<UpdateSheetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSheetModelCopyWith<$Res> {
  factory $UpdateSheetModelCopyWith(
          UpdateSheetModel value, $Res Function(UpdateSheetModel) then) =
      _$UpdateSheetModelCopyWithImpl<$Res, UpdateSheetModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$UpdateSheetModelCopyWithImpl<$Res, $Val extends UpdateSheetModel>
    implements $UpdateSheetModelCopyWith<$Res> {
  _$UpdateSheetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSheetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSheetModelImplCopyWith<$Res>
    implements $UpdateSheetModelCopyWith<$Res> {
  factory _$$UpdateSheetModelImplCopyWith(_$UpdateSheetModelImpl value,
          $Res Function(_$UpdateSheetModelImpl) then) =
      __$$UpdateSheetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$UpdateSheetModelImplCopyWithImpl<$Res>
    extends _$UpdateSheetModelCopyWithImpl<$Res, _$UpdateSheetModelImpl>
    implements _$$UpdateSheetModelImplCopyWith<$Res> {
  __$$UpdateSheetModelImplCopyWithImpl(_$UpdateSheetModelImpl _value,
      $Res Function(_$UpdateSheetModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSheetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UpdateSheetModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSheetModelImpl extends _UpdateSheetModel {
  const _$UpdateSheetModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message})
      : super._();

  factory _$UpdateSheetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateSheetModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'UpdateSheetModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSheetModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of UpdateSheetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSheetModelImplCopyWith<_$UpdateSheetModelImpl> get copyWith =>
      __$$UpdateSheetModelImplCopyWithImpl<_$UpdateSheetModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSheetModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateSheetModel extends UpdateSheetModel {
  const factory _UpdateSheetModel(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message}) =
      _$UpdateSheetModelImpl;
  const _UpdateSheetModel._() : super._();

  factory _UpdateSheetModel.fromJson(Map<String, dynamic> json) =
      _$UpdateSheetModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of UpdateSheetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSheetModelImplCopyWith<_$UpdateSheetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
