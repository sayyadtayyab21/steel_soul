// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'panel_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PanelStatusModel _$PanelStatusModelFromJson(Map<String, dynamic> json) {
  return _PanelStatusModel.fromJson(json);
}

/// @nodoc
mixin _$PanelStatusModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this PanelStatusModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PanelStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PanelStatusModelCopyWith<PanelStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PanelStatusModelCopyWith<$Res> {
  factory $PanelStatusModelCopyWith(
    PanelStatusModel value,
    $Res Function(PanelStatusModel) then,
  ) = _$PanelStatusModelCopyWithImpl<$Res, PanelStatusModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$PanelStatusModelCopyWithImpl<$Res, $Val extends PanelStatusModel>
    implements $PanelStatusModelCopyWith<$Res> {
  _$PanelStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PanelStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = freezed, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String?,
            message:
                freezed == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PanelStatusModelImplCopyWith<$Res>
    implements $PanelStatusModelCopyWith<$Res> {
  factory _$$PanelStatusModelImplCopyWith(
    _$PanelStatusModelImpl value,
    $Res Function(_$PanelStatusModelImpl) then,
  ) = __$$PanelStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$PanelStatusModelImplCopyWithImpl<$Res>
    extends _$PanelStatusModelCopyWithImpl<$Res, _$PanelStatusModelImpl>
    implements _$$PanelStatusModelImplCopyWith<$Res> {
  __$$PanelStatusModelImplCopyWithImpl(
    _$PanelStatusModelImpl _value,
    $Res Function(_$PanelStatusModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PanelStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = freezed, Object? message = freezed}) {
    return _then(
      _$PanelStatusModelImpl(
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String?,
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PanelStatusModelImpl extends _PanelStatusModel {
  const _$PanelStatusModelImpl({
    @JsonKey(name: 'status') this.status,
    @JsonKey(name: 'message') this.message,
  }) : super._();

  factory _$PanelStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PanelStatusModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'PanelStatusModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PanelStatusModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of PanelStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PanelStatusModelImplCopyWith<_$PanelStatusModelImpl> get copyWith =>
      __$$PanelStatusModelImplCopyWithImpl<_$PanelStatusModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PanelStatusModelImplToJson(this);
  }
}

abstract class _PanelStatusModel extends PanelStatusModel {
  const factory _PanelStatusModel({
    @JsonKey(name: 'status') final String? status,
    @JsonKey(name: 'message') final String? message,
  }) = _$PanelStatusModelImpl;
  const _PanelStatusModel._() : super._();

  factory _PanelStatusModel.fromJson(Map<String, dynamic> json) =
      _$PanelStatusModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of PanelStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PanelStatusModelImplCopyWith<_$PanelStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
