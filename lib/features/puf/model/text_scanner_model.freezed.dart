// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_scanner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TextScannerModel _$TextScannerModelFromJson(Map<String, dynamic> json) {
  return _TextScannerModel.fromJson(json);
}

/// @nodoc
mixin _$TextScannerModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'ocr_data')
  OcrData get ocrData => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_image')
  String? get baseImage => throw _privateConstructorUsedError;

  /// Serializes this TextScannerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TextScannerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextScannerModelCopyWith<TextScannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextScannerModelCopyWith<$Res> {
  factory $TextScannerModelCopyWith(
    TextScannerModel value,
    $Res Function(TextScannerModel) then,
  ) = _$TextScannerModelCopyWithImpl<$Res, TextScannerModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'ocr_data') OcrData ocrData,
    @JsonKey(name: 'base_image') String? baseImage,
  });

  $OcrDataCopyWith<$Res> get ocrData;
}

/// @nodoc
class _$TextScannerModelCopyWithImpl<$Res, $Val extends TextScannerModel>
    implements $TextScannerModelCopyWith<$Res> {
  _$TextScannerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextScannerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? ocrData = null,
    Object? baseImage = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            ocrData: null == ocrData
                ? _value.ocrData
                : ocrData // ignore: cast_nullable_to_non_nullable
                      as OcrData,
            baseImage: freezed == baseImage
                ? _value.baseImage
                : baseImage // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of TextScannerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OcrDataCopyWith<$Res> get ocrData {
    return $OcrDataCopyWith<$Res>(_value.ocrData, (value) {
      return _then(_value.copyWith(ocrData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TextScannerModelImplCopyWith<$Res>
    implements $TextScannerModelCopyWith<$Res> {
  factory _$$TextScannerModelImplCopyWith(
    _$TextScannerModelImpl value,
    $Res Function(_$TextScannerModelImpl) then,
  ) = __$$TextScannerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'ocr_data') OcrData ocrData,
    @JsonKey(name: 'base_image') String? baseImage,
  });

  @override
  $OcrDataCopyWith<$Res> get ocrData;
}

/// @nodoc
class __$$TextScannerModelImplCopyWithImpl<$Res>
    extends _$TextScannerModelCopyWithImpl<$Res, _$TextScannerModelImpl>
    implements _$$TextScannerModelImplCopyWith<$Res> {
  __$$TextScannerModelImplCopyWithImpl(
    _$TextScannerModelImpl _value,
    $Res Function(_$TextScannerModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TextScannerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? ocrData = null,
    Object? baseImage = freezed,
  }) {
    return _then(
      _$TextScannerModelImpl(
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        ocrData: null == ocrData
            ? _value.ocrData
            : ocrData // ignore: cast_nullable_to_non_nullable
                  as OcrData,
        baseImage: freezed == baseImage
            ? _value.baseImage
            : baseImage // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TextScannerModelImpl extends _TextScannerModel {
  const _$TextScannerModelImpl({
    @JsonKey(name: 'status') this.status,
    @JsonKey(name: 'message') this.message,
    @JsonKey(name: 'ocr_data') required this.ocrData,
    @JsonKey(name: 'base_image') this.baseImage,
  }) : super._();

  factory _$TextScannerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextScannerModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'ocr_data')
  final OcrData ocrData;
  @override
  @JsonKey(name: 'base_image')
  final String? baseImage;

  @override
  String toString() {
    return 'TextScannerModel(status: $status, message: $message, ocrData: $ocrData, baseImage: $baseImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextScannerModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.ocrData, ocrData) || other.ocrData == ocrData) &&
            (identical(other.baseImage, baseImage) ||
                other.baseImage == baseImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, message, ocrData, baseImage);

  /// Create a copy of TextScannerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextScannerModelImplCopyWith<_$TextScannerModelImpl> get copyWith =>
      __$$TextScannerModelImplCopyWithImpl<_$TextScannerModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TextScannerModelImplToJson(this);
  }
}

abstract class _TextScannerModel extends TextScannerModel {
  const factory _TextScannerModel({
    @JsonKey(name: 'status') final String? status,
    @JsonKey(name: 'message') final String? message,
    @JsonKey(name: 'ocr_data') required final OcrData ocrData,
    @JsonKey(name: 'base_image') final String? baseImage,
  }) = _$TextScannerModelImpl;
  const _TextScannerModel._() : super._();

  factory _TextScannerModel.fromJson(Map<String, dynamic> json) =
      _$TextScannerModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'ocr_data')
  OcrData get ocrData;
  @override
  @JsonKey(name: 'base_image')
  String? get baseImage;

  /// Create a copy of TextScannerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextScannerModelImplCopyWith<_$TextScannerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OcrData _$OcrDataFromJson(Map<String, dynamic> json) {
  return _OcrData.fromJson(json);
}

/// @nodoc
mixin _$OcrData {
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;

  /// Serializes this OcrData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OcrData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OcrDataCopyWith<OcrData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OcrDataCopyWith<$Res> {
  factory $OcrDataCopyWith(OcrData value, $Res Function(OcrData) then) =
      _$OcrDataCopyWithImpl<$Res, OcrData>;
  @useResult
  $Res call({@JsonKey(name: 'text') String? text});
}

/// @nodoc
class _$OcrDataCopyWithImpl<$Res, $Val extends OcrData>
    implements $OcrDataCopyWith<$Res> {
  _$OcrDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OcrData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = freezed}) {
    return _then(
      _value.copyWith(
            text: freezed == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OcrDataImplCopyWith<$Res> implements $OcrDataCopyWith<$Res> {
  factory _$$OcrDataImplCopyWith(
    _$OcrDataImpl value,
    $Res Function(_$OcrDataImpl) then,
  ) = __$$OcrDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'text') String? text});
}

/// @nodoc
class __$$OcrDataImplCopyWithImpl<$Res>
    extends _$OcrDataCopyWithImpl<$Res, _$OcrDataImpl>
    implements _$$OcrDataImplCopyWith<$Res> {
  __$$OcrDataImplCopyWithImpl(
    _$OcrDataImpl _value,
    $Res Function(_$OcrDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OcrData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? text = freezed}) {
    return _then(
      _$OcrDataImpl(
        text: freezed == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OcrDataImpl implements _OcrData {
  const _$OcrDataImpl({@JsonKey(name: 'text') this.text});

  factory _$OcrDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OcrDataImplFromJson(json);

  @override
  @JsonKey(name: 'text')
  final String? text;

  @override
  String toString() {
    return 'OcrData(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OcrDataImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of OcrData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OcrDataImplCopyWith<_$OcrDataImpl> get copyWith =>
      __$$OcrDataImplCopyWithImpl<_$OcrDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OcrDataImplToJson(this);
  }
}

abstract class _OcrData implements OcrData {
  const factory _OcrData({@JsonKey(name: 'text') final String? text}) =
      _$OcrDataImpl;

  factory _OcrData.fromJson(Map<String, dynamic> json) = _$OcrDataImpl.fromJson;

  @override
  @JsonKey(name: 'text')
  String? get text;

  /// Create a copy of OcrData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OcrDataImplCopyWith<_$OcrDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
