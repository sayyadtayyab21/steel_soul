// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanner_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ScannerState {
  bool get isExtracting => throw _privateConstructorUsedError;
  String? get extractedWeight => throw _privateConstructorUsedError;
  File? get capturedImage => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  String? get base64Image => throw _privateConstructorUsedError;

  /// Create a copy of ScannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScannerStateCopyWith<ScannerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannerStateCopyWith<$Res> {
  factory $ScannerStateCopyWith(
    ScannerState value,
    $Res Function(ScannerState) then,
  ) = _$ScannerStateCopyWithImpl<$Res, ScannerState>;
  @useResult
  $Res call({
    bool isExtracting,
    String? extractedWeight,
    File? capturedImage,
    Failure? error,
    String? base64Image,
  });

  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$ScannerStateCopyWithImpl<$Res, $Val extends ScannerState>
    implements $ScannerStateCopyWith<$Res> {
  _$ScannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExtracting = null,
    Object? extractedWeight = freezed,
    Object? capturedImage = freezed,
    Object? error = freezed,
    Object? base64Image = freezed,
  }) {
    return _then(
      _value.copyWith(
            isExtracting: null == isExtracting
                ? _value.isExtracting
                : isExtracting // ignore: cast_nullable_to_non_nullable
                      as bool,
            extractedWeight: freezed == extractedWeight
                ? _value.extractedWeight
                : extractedWeight // ignore: cast_nullable_to_non_nullable
                      as String?,
            capturedImage: freezed == capturedImage
                ? _value.capturedImage
                : capturedImage // ignore: cast_nullable_to_non_nullable
                      as File?,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as Failure?,
            base64Image: freezed == base64Image
                ? _value.base64Image
                : base64Image // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of ScannerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScannerStateImplCopyWith<$Res>
    implements $ScannerStateCopyWith<$Res> {
  factory _$$ScannerStateImplCopyWith(
    _$ScannerStateImpl value,
    $Res Function(_$ScannerStateImpl) then,
  ) = __$$ScannerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isExtracting,
    String? extractedWeight,
    File? capturedImage,
    Failure? error,
    String? base64Image,
  });

  @override
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ScannerStateImplCopyWithImpl<$Res>
    extends _$ScannerStateCopyWithImpl<$Res, _$ScannerStateImpl>
    implements _$$ScannerStateImplCopyWith<$Res> {
  __$$ScannerStateImplCopyWithImpl(
    _$ScannerStateImpl _value,
    $Res Function(_$ScannerStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExtracting = null,
    Object? extractedWeight = freezed,
    Object? capturedImage = freezed,
    Object? error = freezed,
    Object? base64Image = freezed,
  }) {
    return _then(
      _$ScannerStateImpl(
        isExtracting: null == isExtracting
            ? _value.isExtracting
            : isExtracting // ignore: cast_nullable_to_non_nullable
                  as bool,
        extractedWeight: freezed == extractedWeight
            ? _value.extractedWeight
            : extractedWeight // ignore: cast_nullable_to_non_nullable
                  as String?,
        capturedImage: freezed == capturedImage
            ? _value.capturedImage
            : capturedImage // ignore: cast_nullable_to_non_nullable
                  as File?,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as Failure?,
        base64Image: freezed == base64Image
            ? _value.base64Image
            : base64Image // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ScannerStateImpl implements _ScannerState {
  const _$ScannerStateImpl({
    required this.isExtracting,
    this.extractedWeight,
    this.capturedImage,
    this.error,
    this.base64Image,
  });

  @override
  final bool isExtracting;
  @override
  final String? extractedWeight;
  @override
  final File? capturedImage;
  @override
  final Failure? error;
  @override
  final String? base64Image;

  @override
  String toString() {
    return 'ScannerState(isExtracting: $isExtracting, extractedWeight: $extractedWeight, capturedImage: $capturedImage, error: $error, base64Image: $base64Image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScannerStateImpl &&
            (identical(other.isExtracting, isExtracting) ||
                other.isExtracting == isExtracting) &&
            (identical(other.extractedWeight, extractedWeight) ||
                other.extractedWeight == extractedWeight) &&
            (identical(other.capturedImage, capturedImage) ||
                other.capturedImage == capturedImage) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isExtracting,
    extractedWeight,
    capturedImage,
    error,
    base64Image,
  );

  /// Create a copy of ScannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScannerStateImplCopyWith<_$ScannerStateImpl> get copyWith =>
      __$$ScannerStateImplCopyWithImpl<_$ScannerStateImpl>(this, _$identity);
}

abstract class _ScannerState implements ScannerState {
  const factory _ScannerState({
    required final bool isExtracting,
    final String? extractedWeight,
    final File? capturedImage,
    final Failure? error,
    final String? base64Image,
  }) = _$ScannerStateImpl;

  @override
  bool get isExtracting;
  @override
  String? get extractedWeight;
  @override
  File? get capturedImage;
  @override
  Failure? get error;
  @override
  String? get base64Image;

  /// Create a copy of ScannerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScannerStateImplCopyWith<_$ScannerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
