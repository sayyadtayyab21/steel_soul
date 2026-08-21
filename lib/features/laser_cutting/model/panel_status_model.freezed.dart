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
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_scanned')
  int? get totalScanned => throw _privateConstructorUsedError;
  @JsonKey(name: 'success_count')
  int? get successCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'failed_count')
  int? get failedCount => throw _privateConstructorUsedError;
  List<PanelResult> get results => throw _privateConstructorUsedError;
  List<PanelResult> get succeeded => throw _privateConstructorUsedError;
  List<PanelResult> get failed => throw _privateConstructorUsedError;

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
    String status,
    String message,
    @JsonKey(name: 'total_scanned') int? totalScanned,
    @JsonKey(name: 'success_count') int? successCount,
    @JsonKey(name: 'failed_count') int? failedCount,
    List<PanelResult> results,
    List<PanelResult> succeeded,
    List<PanelResult> failed,
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
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? totalScanned = freezed,
    Object? successCount = freezed,
    Object? failedCount = freezed,
    Object? results = null,
    Object? succeeded = null,
    Object? failed = null,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            totalScanned:
                freezed == totalScanned
                    ? _value.totalScanned
                    : totalScanned // ignore: cast_nullable_to_non_nullable
                        as int?,
            successCount:
                freezed == successCount
                    ? _value.successCount
                    : successCount // ignore: cast_nullable_to_non_nullable
                        as int?,
            failedCount:
                freezed == failedCount
                    ? _value.failedCount
                    : failedCount // ignore: cast_nullable_to_non_nullable
                        as int?,
            results:
                null == results
                    ? _value.results
                    : results // ignore: cast_nullable_to_non_nullable
                        as List<PanelResult>,
            succeeded:
                null == succeeded
                    ? _value.succeeded
                    : succeeded // ignore: cast_nullable_to_non_nullable
                        as List<PanelResult>,
            failed:
                null == failed
                    ? _value.failed
                    : failed // ignore: cast_nullable_to_non_nullable
                        as List<PanelResult>,
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
    String status,
    String message,
    @JsonKey(name: 'total_scanned') int? totalScanned,
    @JsonKey(name: 'success_count') int? successCount,
    @JsonKey(name: 'failed_count') int? failedCount,
    List<PanelResult> results,
    List<PanelResult> succeeded,
    List<PanelResult> failed,
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
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? totalScanned = freezed,
    Object? successCount = freezed,
    Object? failedCount = freezed,
    Object? results = null,
    Object? succeeded = null,
    Object? failed = null,
  }) {
    return _then(
      _$PanelStatusModelImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        totalScanned:
            freezed == totalScanned
                ? _value.totalScanned
                : totalScanned // ignore: cast_nullable_to_non_nullable
                    as int?,
        successCount:
            freezed == successCount
                ? _value.successCount
                : successCount // ignore: cast_nullable_to_non_nullable
                    as int?,
        failedCount:
            freezed == failedCount
                ? _value.failedCount
                : failedCount // ignore: cast_nullable_to_non_nullable
                    as int?,
        results:
            null == results
                ? _value._results
                : results // ignore: cast_nullable_to_non_nullable
                    as List<PanelResult>,
        succeeded:
            null == succeeded
                ? _value._succeeded
                : succeeded // ignore: cast_nullable_to_non_nullable
                    as List<PanelResult>,
        failed:
            null == failed
                ? _value._failed
                : failed // ignore: cast_nullable_to_non_nullable
                    as List<PanelResult>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PanelStatusModelImpl extends _PanelStatusModel {
  const _$PanelStatusModelImpl({
    required this.status,
    required this.message,
    @JsonKey(name: 'total_scanned') this.totalScanned,
    @JsonKey(name: 'success_count') this.successCount,
    @JsonKey(name: 'failed_count') this.failedCount,
    final List<PanelResult> results = const [],
    final List<PanelResult> succeeded = const [],
    final List<PanelResult> failed = const [],
  }) : _results = results,
       _succeeded = succeeded,
       _failed = failed,
       super._();

  factory _$PanelStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PanelStatusModelImplFromJson(json);

  @override
  final String status;
  @override
  final String message;
  @override
  @JsonKey(name: 'total_scanned')
  final int? totalScanned;
  @override
  @JsonKey(name: 'success_count')
  final int? successCount;
  @override
  @JsonKey(name: 'failed_count')
  final int? failedCount;
  final List<PanelResult> _results;
  @override
  @JsonKey()
  List<PanelResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  final List<PanelResult> _succeeded;
  @override
  @JsonKey()
  List<PanelResult> get succeeded {
    if (_succeeded is EqualUnmodifiableListView) return _succeeded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_succeeded);
  }

  final List<PanelResult> _failed;
  @override
  @JsonKey()
  List<PanelResult> get failed {
    if (_failed is EqualUnmodifiableListView) return _failed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_failed);
  }

  @override
  String toString() {
    return 'PanelStatusModel(status: $status, message: $message, totalScanned: $totalScanned, successCount: $successCount, failedCount: $failedCount, results: $results, succeeded: $succeeded, failed: $failed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PanelStatusModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.totalScanned, totalScanned) ||
                other.totalScanned == totalScanned) &&
            (identical(other.successCount, successCount) ||
                other.successCount == successCount) &&
            (identical(other.failedCount, failedCount) ||
                other.failedCount == failedCount) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality().equals(
              other._succeeded,
              _succeeded,
            ) &&
            const DeepCollectionEquality().equals(other._failed, _failed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    message,
    totalScanned,
    successCount,
    failedCount,
    const DeepCollectionEquality().hash(_results),
    const DeepCollectionEquality().hash(_succeeded),
    const DeepCollectionEquality().hash(_failed),
  );

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
    required final String status,
    required final String message,
    @JsonKey(name: 'total_scanned') final int? totalScanned,
    @JsonKey(name: 'success_count') final int? successCount,
    @JsonKey(name: 'failed_count') final int? failedCount,
    final List<PanelResult> results,
    final List<PanelResult> succeeded,
    final List<PanelResult> failed,
  }) = _$PanelStatusModelImpl;
  const _PanelStatusModel._() : super._();

  factory _PanelStatusModel.fromJson(Map<String, dynamic> json) =
      _$PanelStatusModelImpl.fromJson;

  @override
  String get status;
  @override
  String get message;
  @override
  @JsonKey(name: 'total_scanned')
  int? get totalScanned;
  @override
  @JsonKey(name: 'success_count')
  int? get successCount;
  @override
  @JsonKey(name: 'failed_count')
  int? get failedCount;
  @override
  List<PanelResult> get results;
  @override
  List<PanelResult> get succeeded;
  @override
  List<PanelResult> get failed;

  /// Create a copy of PanelStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PanelStatusModelImplCopyWith<_$PanelStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PanelResult _$PanelResultFromJson(Map<String, dynamic> json) {
  return _PanelResult.fromJson(json);
}

/// @nodoc
mixin _$PanelResult {
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'panel_id')
  String get panelId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this PanelResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PanelResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PanelResultCopyWith<PanelResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PanelResultCopyWith<$Res> {
  factory $PanelResultCopyWith(
    PanelResult value,
    $Res Function(PanelResult) then,
  ) = _$PanelResultCopyWithImpl<$Res, PanelResult>;
  @useResult
  $Res call({
    String status,
    @JsonKey(name: 'panel_id') String panelId,
    String message,
  });
}

/// @nodoc
class _$PanelResultCopyWithImpl<$Res, $Val extends PanelResult>
    implements $PanelResultCopyWith<$Res> {
  _$PanelResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PanelResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? panelId = null,
    Object? message = null,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            panelId:
                null == panelId
                    ? _value.panelId
                    : panelId // ignore: cast_nullable_to_non_nullable
                        as String,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PanelResultImplCopyWith<$Res>
    implements $PanelResultCopyWith<$Res> {
  factory _$$PanelResultImplCopyWith(
    _$PanelResultImpl value,
    $Res Function(_$PanelResultImpl) then,
  ) = __$$PanelResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String status,
    @JsonKey(name: 'panel_id') String panelId,
    String message,
  });
}

/// @nodoc
class __$$PanelResultImplCopyWithImpl<$Res>
    extends _$PanelResultCopyWithImpl<$Res, _$PanelResultImpl>
    implements _$$PanelResultImplCopyWith<$Res> {
  __$$PanelResultImplCopyWithImpl(
    _$PanelResultImpl _value,
    $Res Function(_$PanelResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PanelResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? panelId = null,
    Object? message = null,
  }) {
    return _then(
      _$PanelResultImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        panelId:
            null == panelId
                ? _value.panelId
                : panelId // ignore: cast_nullable_to_non_nullable
                    as String,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PanelResultImpl implements _PanelResult {
  const _$PanelResultImpl({
    required this.status,
    @JsonKey(name: 'panel_id') required this.panelId,
    required this.message,
  });

  factory _$PanelResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PanelResultImplFromJson(json);

  @override
  final String status;
  @override
  @JsonKey(name: 'panel_id')
  final String panelId;
  @override
  final String message;

  @override
  String toString() {
    return 'PanelResult(status: $status, panelId: $panelId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PanelResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.panelId, panelId) || other.panelId == panelId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, panelId, message);

  /// Create a copy of PanelResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PanelResultImplCopyWith<_$PanelResultImpl> get copyWith =>
      __$$PanelResultImplCopyWithImpl<_$PanelResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PanelResultImplToJson(this);
  }
}

abstract class _PanelResult implements PanelResult {
  const factory _PanelResult({
    required final String status,
    @JsonKey(name: 'panel_id') required final String panelId,
    required final String message,
  }) = _$PanelResultImpl;

  factory _PanelResult.fromJson(Map<String, dynamic> json) =
      _$PanelResultImpl.fromJson;

  @override
  String get status;
  @override
  @JsonKey(name: 'panel_id')
  String get panelId;
  @override
  String get message;

  /// Create a copy of PanelResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PanelResultImplCopyWith<_$PanelResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
