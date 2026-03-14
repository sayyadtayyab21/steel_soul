// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laser_cutting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LaserCuttingResponse _$LaserCuttingResponseFromJson(Map<String, dynamic> json) {
  return _LaserCuttingResponse.fromJson(json);
}

/// @nodoc
mixin _$LaserCuttingResponse {
  List<LaserCuttingList> get message => throw _privateConstructorUsedError;

  /// Serializes this LaserCuttingResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LaserCuttingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LaserCuttingResponseCopyWith<LaserCuttingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaserCuttingResponseCopyWith<$Res> {
  factory $LaserCuttingResponseCopyWith(
    LaserCuttingResponse value,
    $Res Function(LaserCuttingResponse) then,
  ) = _$LaserCuttingResponseCopyWithImpl<$Res, LaserCuttingResponse>;
  @useResult
  $Res call({List<LaserCuttingList> message});
}

/// @nodoc
class _$LaserCuttingResponseCopyWithImpl<
  $Res,
  $Val extends LaserCuttingResponse
>
    implements $LaserCuttingResponseCopyWith<$Res> {
  _$LaserCuttingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LaserCuttingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _value.copyWith(
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as List<LaserCuttingList>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LaserCuttingResponseImplCopyWith<$Res>
    implements $LaserCuttingResponseCopyWith<$Res> {
  factory _$$LaserCuttingResponseImplCopyWith(
    _$LaserCuttingResponseImpl value,
    $Res Function(_$LaserCuttingResponseImpl) then,
  ) = __$$LaserCuttingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LaserCuttingList> message});
}

/// @nodoc
class __$$LaserCuttingResponseImplCopyWithImpl<$Res>
    extends _$LaserCuttingResponseCopyWithImpl<$Res, _$LaserCuttingResponseImpl>
    implements _$$LaserCuttingResponseImplCopyWith<$Res> {
  __$$LaserCuttingResponseImplCopyWithImpl(
    _$LaserCuttingResponseImpl _value,
    $Res Function(_$LaserCuttingResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LaserCuttingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$LaserCuttingResponseImpl(
        message:
            null == message
                ? _value._message
                : message // ignore: cast_nullable_to_non_nullable
                    as List<LaserCuttingList>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LaserCuttingResponseImpl implements _LaserCuttingResponse {
  const _$LaserCuttingResponseImpl({
    required final List<LaserCuttingList> message,
  }) : _message = message;

  factory _$LaserCuttingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaserCuttingResponseImplFromJson(json);

  final List<LaserCuttingList> _message;
  @override
  List<LaserCuttingList> get message {
    if (_message is EqualUnmodifiableListView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_message);
  }

  @override
  String toString() {
    return 'LaserCuttingResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaserCuttingResponseImpl &&
            const DeepCollectionEquality().equals(other._message, _message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_message));

  /// Create a copy of LaserCuttingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LaserCuttingResponseImplCopyWith<_$LaserCuttingResponseImpl>
  get copyWith =>
      __$$LaserCuttingResponseImplCopyWithImpl<_$LaserCuttingResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LaserCuttingResponseImplToJson(this);
  }
}

abstract class _LaserCuttingResponse implements LaserCuttingResponse {
  const factory _LaserCuttingResponse({
    required final List<LaserCuttingList> message,
  }) = _$LaserCuttingResponseImpl;

  factory _LaserCuttingResponse.fromJson(Map<String, dynamic> json) =
      _$LaserCuttingResponseImpl.fromJson;

  @override
  List<LaserCuttingList> get message;

  /// Create a copy of LaserCuttingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LaserCuttingResponseImplCopyWith<_$LaserCuttingResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

LaserCuttingList _$LaserCuttingListFromJson(Map<String, dynamic> json) {
  return _LaserCuttingList.fromJson(json);
}

/// @nodoc
mixin _$LaserCuttingList {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  String? get projectId => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_phone_number')
  String? get customerPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'laser_cutting_status')
  String? get laserCuttingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'MS 0.6 mm')
  Ms06? get ms06 => throw _privateConstructorUsedError;
  @JsonKey(name: 'MS 0.8 mm')
  Ms08? get ms08 => throw _privateConstructorUsedError;
  @JsonKey(name: 'MS 1.0 mm')
  Ms10? get ms10 => throw _privateConstructorUsedError;
  @JsonKey(name: 'MS 1.2 mm')
  Ms12? get ms12 => throw _privateConstructorUsedError;
  @JsonKey(name: 'SS 0.8 mm')
  Ss08? get ss08 => throw _privateConstructorUsedError;
  @JsonKey(name: 'SS 1.0 mm')
  Ss10? get ss10 => throw _privateConstructorUsedError;

  /// Serializes this LaserCuttingList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LaserCuttingListCopyWith<LaserCuttingList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaserCuttingListCopyWith<$Res> {
  factory $LaserCuttingListCopyWith(
    LaserCuttingList value,
    $Res Function(LaserCuttingList) then,
  ) = _$LaserCuttingListCopyWithImpl<$Res, LaserCuttingList>;
  @useResult
  $Res call({
    String? name,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'project_id') String? projectId,
    String? date,
    String? time,
    @JsonKey(name: 'customer_phone_number') String? customerPhoneNumber,
    @JsonKey(name: 'laser_cutting_status') String? laserCuttingStatus,
    @JsonKey(name: 'MS 0.6 mm') Ms06? ms06,
    @JsonKey(name: 'MS 0.8 mm') Ms08? ms08,
    @JsonKey(name: 'MS 1.0 mm') Ms10? ms10,
    @JsonKey(name: 'MS 1.2 mm') Ms12? ms12,
    @JsonKey(name: 'SS 0.8 mm') Ss08? ss08,
    @JsonKey(name: 'SS 1.0 mm') Ss10? ss10,
  });

  $Ms06CopyWith<$Res>? get ms06;
  $Ms08CopyWith<$Res>? get ms08;
  $Ms10CopyWith<$Res>? get ms10;
  $Ms12CopyWith<$Res>? get ms12;
  $Ss08CopyWith<$Res>? get ss08;
  $Ss10CopyWith<$Res>? get ss10;
}

/// @nodoc
class _$LaserCuttingListCopyWithImpl<$Res, $Val extends LaserCuttingList>
    implements $LaserCuttingListCopyWith<$Res> {
  _$LaserCuttingListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? customerName = freezed,
    Object? projectId = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? customerPhoneNumber = freezed,
    Object? laserCuttingStatus = freezed,
    Object? ms06 = freezed,
    Object? ms08 = freezed,
    Object? ms10 = freezed,
    Object? ms12 = freezed,
    Object? ss08 = freezed,
    Object? ss10 = freezed,
  }) {
    return _then(
      _value.copyWith(
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            customerName:
                freezed == customerName
                    ? _value.customerName
                    : customerName // ignore: cast_nullable_to_non_nullable
                        as String?,
            projectId:
                freezed == projectId
                    ? _value.projectId
                    : projectId // ignore: cast_nullable_to_non_nullable
                        as String?,
            date:
                freezed == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as String?,
            time:
                freezed == time
                    ? _value.time
                    : time // ignore: cast_nullable_to_non_nullable
                        as String?,
            customerPhoneNumber:
                freezed == customerPhoneNumber
                    ? _value.customerPhoneNumber
                    : customerPhoneNumber // ignore: cast_nullable_to_non_nullable
                        as String?,
            laserCuttingStatus:
                freezed == laserCuttingStatus
                    ? _value.laserCuttingStatus
                    : laserCuttingStatus // ignore: cast_nullable_to_non_nullable
                        as String?,
            ms06:
                freezed == ms06
                    ? _value.ms06
                    : ms06 // ignore: cast_nullable_to_non_nullable
                        as Ms06?,
            ms08:
                freezed == ms08
                    ? _value.ms08
                    : ms08 // ignore: cast_nullable_to_non_nullable
                        as Ms08?,
            ms10:
                freezed == ms10
                    ? _value.ms10
                    : ms10 // ignore: cast_nullable_to_non_nullable
                        as Ms10?,
            ms12:
                freezed == ms12
                    ? _value.ms12
                    : ms12 // ignore: cast_nullable_to_non_nullable
                        as Ms12?,
            ss08:
                freezed == ss08
                    ? _value.ss08
                    : ss08 // ignore: cast_nullable_to_non_nullable
                        as Ss08?,
            ss10:
                freezed == ss10
                    ? _value.ss10
                    : ss10 // ignore: cast_nullable_to_non_nullable
                        as Ss10?,
          )
          as $Val,
    );
  }

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Ms06CopyWith<$Res>? get ms06 {
    if (_value.ms06 == null) {
      return null;
    }

    return $Ms06CopyWith<$Res>(_value.ms06!, (value) {
      return _then(_value.copyWith(ms06: value) as $Val);
    });
  }

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Ms08CopyWith<$Res>? get ms08 {
    if (_value.ms08 == null) {
      return null;
    }

    return $Ms08CopyWith<$Res>(_value.ms08!, (value) {
      return _then(_value.copyWith(ms08: value) as $Val);
    });
  }

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Ms10CopyWith<$Res>? get ms10 {
    if (_value.ms10 == null) {
      return null;
    }

    return $Ms10CopyWith<$Res>(_value.ms10!, (value) {
      return _then(_value.copyWith(ms10: value) as $Val);
    });
  }

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Ms12CopyWith<$Res>? get ms12 {
    if (_value.ms12 == null) {
      return null;
    }

    return $Ms12CopyWith<$Res>(_value.ms12!, (value) {
      return _then(_value.copyWith(ms12: value) as $Val);
    });
  }

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Ss08CopyWith<$Res>? get ss08 {
    if (_value.ss08 == null) {
      return null;
    }

    return $Ss08CopyWith<$Res>(_value.ss08!, (value) {
      return _then(_value.copyWith(ss08: value) as $Val);
    });
  }

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Ss10CopyWith<$Res>? get ss10 {
    if (_value.ss10 == null) {
      return null;
    }

    return $Ss10CopyWith<$Res>(_value.ss10!, (value) {
      return _then(_value.copyWith(ss10: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LaserCuttingListImplCopyWith<$Res>
    implements $LaserCuttingListCopyWith<$Res> {
  factory _$$LaserCuttingListImplCopyWith(
    _$LaserCuttingListImpl value,
    $Res Function(_$LaserCuttingListImpl) then,
  ) = __$$LaserCuttingListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? name,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'project_id') String? projectId,
    String? date,
    String? time,
    @JsonKey(name: 'customer_phone_number') String? customerPhoneNumber,
    @JsonKey(name: 'laser_cutting_status') String? laserCuttingStatus,
    @JsonKey(name: 'MS 0.6 mm') Ms06? ms06,
    @JsonKey(name: 'MS 0.8 mm') Ms08? ms08,
    @JsonKey(name: 'MS 1.0 mm') Ms10? ms10,
    @JsonKey(name: 'MS 1.2 mm') Ms12? ms12,
    @JsonKey(name: 'SS 0.8 mm') Ss08? ss08,
    @JsonKey(name: 'SS 1.0 mm') Ss10? ss10,
  });

  @override
  $Ms06CopyWith<$Res>? get ms06;
  @override
  $Ms08CopyWith<$Res>? get ms08;
  @override
  $Ms10CopyWith<$Res>? get ms10;
  @override
  $Ms12CopyWith<$Res>? get ms12;
  @override
  $Ss08CopyWith<$Res>? get ss08;
  @override
  $Ss10CopyWith<$Res>? get ss10;
}

/// @nodoc
class __$$LaserCuttingListImplCopyWithImpl<$Res>
    extends _$LaserCuttingListCopyWithImpl<$Res, _$LaserCuttingListImpl>
    implements _$$LaserCuttingListImplCopyWith<$Res> {
  __$$LaserCuttingListImplCopyWithImpl(
    _$LaserCuttingListImpl _value,
    $Res Function(_$LaserCuttingListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? customerName = freezed,
    Object? projectId = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? customerPhoneNumber = freezed,
    Object? laserCuttingStatus = freezed,
    Object? ms06 = freezed,
    Object? ms08 = freezed,
    Object? ms10 = freezed,
    Object? ms12 = freezed,
    Object? ss08 = freezed,
    Object? ss10 = freezed,
  }) {
    return _then(
      _$LaserCuttingListImpl(
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        customerName:
            freezed == customerName
                ? _value.customerName
                : customerName // ignore: cast_nullable_to_non_nullable
                    as String?,
        projectId:
            freezed == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                    as String?,
        date:
            freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as String?,
        time:
            freezed == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                    as String?,
        customerPhoneNumber:
            freezed == customerPhoneNumber
                ? _value.customerPhoneNumber
                : customerPhoneNumber // ignore: cast_nullable_to_non_nullable
                    as String?,
        laserCuttingStatus:
            freezed == laserCuttingStatus
                ? _value.laserCuttingStatus
                : laserCuttingStatus // ignore: cast_nullable_to_non_nullable
                    as String?,
        ms06:
            freezed == ms06
                ? _value.ms06
                : ms06 // ignore: cast_nullable_to_non_nullable
                    as Ms06?,
        ms08:
            freezed == ms08
                ? _value.ms08
                : ms08 // ignore: cast_nullable_to_non_nullable
                    as Ms08?,
        ms10:
            freezed == ms10
                ? _value.ms10
                : ms10 // ignore: cast_nullable_to_non_nullable
                    as Ms10?,
        ms12:
            freezed == ms12
                ? _value.ms12
                : ms12 // ignore: cast_nullable_to_non_nullable
                    as Ms12?,
        ss08:
            freezed == ss08
                ? _value.ss08
                : ss08 // ignore: cast_nullable_to_non_nullable
                    as Ss08?,
        ss10:
            freezed == ss10
                ? _value.ss10
                : ss10 // ignore: cast_nullable_to_non_nullable
                    as Ss10?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LaserCuttingListImpl implements _LaserCuttingList {
  const _$LaserCuttingListImpl({
    this.name,
    @JsonKey(name: 'customer_name') this.customerName,
    @JsonKey(name: 'project_id') this.projectId,
    this.date,
    this.time,
    @JsonKey(name: 'customer_phone_number') this.customerPhoneNumber,
    @JsonKey(name: 'laser_cutting_status') this.laserCuttingStatus,
    @JsonKey(name: 'MS 0.6 mm') this.ms06,
    @JsonKey(name: 'MS 0.8 mm') this.ms08,
    @JsonKey(name: 'MS 1.0 mm') this.ms10,
    @JsonKey(name: 'MS 1.2 mm') this.ms12,
    @JsonKey(name: 'SS 0.8 mm') this.ss08,
    @JsonKey(name: 'SS 1.0 mm') this.ss10,
  });

  factory _$LaserCuttingListImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaserCuttingListImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'customer_name')
  final String? customerName;
  @override
  @JsonKey(name: 'project_id')
  final String? projectId;
  @override
  final String? date;
  @override
  final String? time;
  @override
  @JsonKey(name: 'customer_phone_number')
  final String? customerPhoneNumber;
  @override
  @JsonKey(name: 'laser_cutting_status')
  final String? laserCuttingStatus;
  @override
  @JsonKey(name: 'MS 0.6 mm')
  final Ms06? ms06;
  @override
  @JsonKey(name: 'MS 0.8 mm')
  final Ms08? ms08;
  @override
  @JsonKey(name: 'MS 1.0 mm')
  final Ms10? ms10;
  @override
  @JsonKey(name: 'MS 1.2 mm')
  final Ms12? ms12;
  @override
  @JsonKey(name: 'SS 0.8 mm')
  final Ss08? ss08;
  @override
  @JsonKey(name: 'SS 1.0 mm')
  final Ss10? ss10;

  @override
  String toString() {
    return 'LaserCuttingList(name: $name, customerName: $customerName, projectId: $projectId, date: $date, time: $time, customerPhoneNumber: $customerPhoneNumber, laserCuttingStatus: $laserCuttingStatus, ms06: $ms06, ms08: $ms08, ms10: $ms10, ms12: $ms12, ss08: $ss08, ss10: $ss10)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaserCuttingListImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.customerPhoneNumber, customerPhoneNumber) ||
                other.customerPhoneNumber == customerPhoneNumber) &&
            (identical(other.laserCuttingStatus, laserCuttingStatus) ||
                other.laserCuttingStatus == laserCuttingStatus) &&
            (identical(other.ms06, ms06) || other.ms06 == ms06) &&
            (identical(other.ms08, ms08) || other.ms08 == ms08) &&
            (identical(other.ms10, ms10) || other.ms10 == ms10) &&
            (identical(other.ms12, ms12) || other.ms12 == ms12) &&
            (identical(other.ss08, ss08) || other.ss08 == ss08) &&
            (identical(other.ss10, ss10) || other.ss10 == ss10));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    customerName,
    projectId,
    date,
    time,
    customerPhoneNumber,
    laserCuttingStatus,
    ms06,
    ms08,
    ms10,
    ms12,
    ss08,
    ss10,
  );

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LaserCuttingListImplCopyWith<_$LaserCuttingListImpl> get copyWith =>
      __$$LaserCuttingListImplCopyWithImpl<_$LaserCuttingListImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LaserCuttingListImplToJson(this);
  }
}

abstract class _LaserCuttingList implements LaserCuttingList {
  const factory _LaserCuttingList({
    final String? name,
    @JsonKey(name: 'customer_name') final String? customerName,
    @JsonKey(name: 'project_id') final String? projectId,
    final String? date,
    final String? time,
    @JsonKey(name: 'customer_phone_number') final String? customerPhoneNumber,
    @JsonKey(name: 'laser_cutting_status') final String? laserCuttingStatus,
    @JsonKey(name: 'MS 0.6 mm') final Ms06? ms06,
    @JsonKey(name: 'MS 0.8 mm') final Ms08? ms08,
    @JsonKey(name: 'MS 1.0 mm') final Ms10? ms10,
    @JsonKey(name: 'MS 1.2 mm') final Ms12? ms12,
    @JsonKey(name: 'SS 0.8 mm') final Ss08? ss08,
    @JsonKey(name: 'SS 1.0 mm') final Ss10? ss10,
  }) = _$LaserCuttingListImpl;

  factory _LaserCuttingList.fromJson(Map<String, dynamic> json) =
      _$LaserCuttingListImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'customer_name')
  String? get customerName;
  @override
  @JsonKey(name: 'project_id')
  String? get projectId;
  @override
  String? get date;
  @override
  String? get time;
  @override
  @JsonKey(name: 'customer_phone_number')
  String? get customerPhoneNumber;
  @override
  @JsonKey(name: 'laser_cutting_status')
  String? get laserCuttingStatus;
  @override
  @JsonKey(name: 'MS 0.6 mm')
  Ms06? get ms06;
  @override
  @JsonKey(name: 'MS 0.8 mm')
  Ms08? get ms08;
  @override
  @JsonKey(name: 'MS 1.0 mm')
  Ms10? get ms10;
  @override
  @JsonKey(name: 'MS 1.2 mm')
  Ms12? get ms12;
  @override
  @JsonKey(name: 'SS 0.8 mm')
  Ss08? get ss08;
  @override
  @JsonKey(name: 'SS 1.0 mm')
  Ss10? get ss10;

  /// Create a copy of LaserCuttingList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LaserCuttingListImplCopyWith<_$LaserCuttingListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ms06 _$Ms06FromJson(Map<String, dynamic> json) {
  return _Ms06.fromJson(json);
}

/// @nodoc
mixin _$Ms06 {
  @JsonKey(name: 'ms_0_6_mm_full_sheet')
  int? get fullSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ms_0_6_mm_half_sheet')
  int? get halfSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ms_0_6_mm_quarter_sheet')
  int? get quarterSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ms_0_6_mm_total_sheets')
  int? get totalSheets => throw _privateConstructorUsedError;

  /// Serializes this Ms06 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ms06
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Ms06CopyWith<Ms06> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Ms06CopyWith<$Res> {
  factory $Ms06CopyWith(Ms06 value, $Res Function(Ms06) then) =
      _$Ms06CopyWithImpl<$Res, Ms06>;
  @useResult
  $Res call({
    @JsonKey(name: 'ms_0_6_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ms_0_6_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ms_0_6_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ms_0_6_mm_total_sheets') int? totalSheets,
  });
}

/// @nodoc
class _$Ms06CopyWithImpl<$Res, $Val extends Ms06>
    implements $Ms06CopyWith<$Res> {
  _$Ms06CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ms06
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSheet = freezed,
    Object? halfSheet = freezed,
    Object? quarterSheet = freezed,
    Object? totalSheets = freezed,
  }) {
    return _then(
      _value.copyWith(
            fullSheet:
                freezed == fullSheet
                    ? _value.fullSheet
                    : fullSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            halfSheet:
                freezed == halfSheet
                    ? _value.halfSheet
                    : halfSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            quarterSheet:
                freezed == quarterSheet
                    ? _value.quarterSheet
                    : quarterSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            totalSheets:
                freezed == totalSheets
                    ? _value.totalSheets
                    : totalSheets // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Ms06ImplCopyWith<$Res> implements $Ms06CopyWith<$Res> {
  factory _$$Ms06ImplCopyWith(
    _$Ms06Impl value,
    $Res Function(_$Ms06Impl) then,
  ) = __$$Ms06ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'ms_0_6_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ms_0_6_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ms_0_6_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ms_0_6_mm_total_sheets') int? totalSheets,
  });
}

/// @nodoc
class __$$Ms06ImplCopyWithImpl<$Res>
    extends _$Ms06CopyWithImpl<$Res, _$Ms06Impl>
    implements _$$Ms06ImplCopyWith<$Res> {
  __$$Ms06ImplCopyWithImpl(_$Ms06Impl _value, $Res Function(_$Ms06Impl) _then)
    : super(_value, _then);

  /// Create a copy of Ms06
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSheet = freezed,
    Object? halfSheet = freezed,
    Object? quarterSheet = freezed,
    Object? totalSheets = freezed,
  }) {
    return _then(
      _$Ms06Impl(
        fullSheet:
            freezed == fullSheet
                ? _value.fullSheet
                : fullSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        halfSheet:
            freezed == halfSheet
                ? _value.halfSheet
                : halfSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        quarterSheet:
            freezed == quarterSheet
                ? _value.quarterSheet
                : quarterSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        totalSheets:
            freezed == totalSheets
                ? _value.totalSheets
                : totalSheets // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Ms06Impl implements _Ms06 {
  const _$Ms06Impl({
    @JsonKey(name: 'ms_0_6_mm_full_sheet') this.fullSheet,
    @JsonKey(name: 'ms_0_6_mm_half_sheet') this.halfSheet,
    @JsonKey(name: 'ms_0_6_mm_quarter_sheet') this.quarterSheet,
    @JsonKey(name: 'ms_0_6_mm_total_sheets') this.totalSheets,
  });

  factory _$Ms06Impl.fromJson(Map<String, dynamic> json) =>
      _$$Ms06ImplFromJson(json);

  @override
  @JsonKey(name: 'ms_0_6_mm_full_sheet')
  final int? fullSheet;
  @override
  @JsonKey(name: 'ms_0_6_mm_half_sheet')
  final int? halfSheet;
  @override
  @JsonKey(name: 'ms_0_6_mm_quarter_sheet')
  final int? quarterSheet;
  @override
  @JsonKey(name: 'ms_0_6_mm_total_sheets')
  final int? totalSheets;

  @override
  String toString() {
    return 'Ms06(fullSheet: $fullSheet, halfSheet: $halfSheet, quarterSheet: $quarterSheet, totalSheets: $totalSheets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Ms06Impl &&
            (identical(other.fullSheet, fullSheet) ||
                other.fullSheet == fullSheet) &&
            (identical(other.halfSheet, halfSheet) ||
                other.halfSheet == halfSheet) &&
            (identical(other.quarterSheet, quarterSheet) ||
                other.quarterSheet == quarterSheet) &&
            (identical(other.totalSheets, totalSheets) ||
                other.totalSheets == totalSheets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullSheet, halfSheet, quarterSheet, totalSheets);

  /// Create a copy of Ms06
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Ms06ImplCopyWith<_$Ms06Impl> get copyWith =>
      __$$Ms06ImplCopyWithImpl<_$Ms06Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Ms06ImplToJson(this);
  }
}

abstract class _Ms06 implements Ms06 {
  const factory _Ms06({
    @JsonKey(name: 'ms_0_6_mm_full_sheet') final int? fullSheet,
    @JsonKey(name: 'ms_0_6_mm_half_sheet') final int? halfSheet,
    @JsonKey(name: 'ms_0_6_mm_quarter_sheet') final int? quarterSheet,
    @JsonKey(name: 'ms_0_6_mm_total_sheets') final int? totalSheets,
  }) = _$Ms06Impl;

  factory _Ms06.fromJson(Map<String, dynamic> json) = _$Ms06Impl.fromJson;

  @override
  @JsonKey(name: 'ms_0_6_mm_full_sheet')
  int? get fullSheet;
  @override
  @JsonKey(name: 'ms_0_6_mm_half_sheet')
  int? get halfSheet;
  @override
  @JsonKey(name: 'ms_0_6_mm_quarter_sheet')
  int? get quarterSheet;
  @override
  @JsonKey(name: 'ms_0_6_mm_total_sheets')
  int? get totalSheets;

  /// Create a copy of Ms06
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Ms06ImplCopyWith<_$Ms06Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ms08 _$Ms08FromJson(Map<String, dynamic> json) {
  return _Ms08.fromJson(json);
}

/// @nodoc
mixin _$Ms08 {
  @JsonKey(name: 'ms_0_8_mm_full_sheet')
  int? get fullSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ms_0_8_mm_half_sheet')
  int? get halfSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ms_0_8_mm_quarter_sheet')
  int? get quarterSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ms_0_8_mm_total_sheets')
  int? get totalSheets => throw _privateConstructorUsedError;

  /// Serializes this Ms08 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ms08
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Ms08CopyWith<Ms08> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Ms08CopyWith<$Res> {
  factory $Ms08CopyWith(Ms08 value, $Res Function(Ms08) then) =
      _$Ms08CopyWithImpl<$Res, Ms08>;
  @useResult
  $Res call({
    @JsonKey(name: 'ms_0_8_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ms_0_8_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ms_0_8_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ms_0_8_mm_total_sheets') int? totalSheets,
  });
}

/// @nodoc
class _$Ms08CopyWithImpl<$Res, $Val extends Ms08>
    implements $Ms08CopyWith<$Res> {
  _$Ms08CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ms08
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSheet = freezed,
    Object? halfSheet = freezed,
    Object? quarterSheet = freezed,
    Object? totalSheets = freezed,
  }) {
    return _then(
      _value.copyWith(
            fullSheet:
                freezed == fullSheet
                    ? _value.fullSheet
                    : fullSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            halfSheet:
                freezed == halfSheet
                    ? _value.halfSheet
                    : halfSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            quarterSheet:
                freezed == quarterSheet
                    ? _value.quarterSheet
                    : quarterSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            totalSheets:
                freezed == totalSheets
                    ? _value.totalSheets
                    : totalSheets // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Ms08ImplCopyWith<$Res> implements $Ms08CopyWith<$Res> {
  factory _$$Ms08ImplCopyWith(
    _$Ms08Impl value,
    $Res Function(_$Ms08Impl) then,
  ) = __$$Ms08ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'ms_0_8_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ms_0_8_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ms_0_8_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ms_0_8_mm_total_sheets') int? totalSheets,
  });
}

/// @nodoc
class __$$Ms08ImplCopyWithImpl<$Res>
    extends _$Ms08CopyWithImpl<$Res, _$Ms08Impl>
    implements _$$Ms08ImplCopyWith<$Res> {
  __$$Ms08ImplCopyWithImpl(_$Ms08Impl _value, $Res Function(_$Ms08Impl) _then)
    : super(_value, _then);

  /// Create a copy of Ms08
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSheet = freezed,
    Object? halfSheet = freezed,
    Object? quarterSheet = freezed,
    Object? totalSheets = freezed,
  }) {
    return _then(
      _$Ms08Impl(
        fullSheet:
            freezed == fullSheet
                ? _value.fullSheet
                : fullSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        halfSheet:
            freezed == halfSheet
                ? _value.halfSheet
                : halfSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        quarterSheet:
            freezed == quarterSheet
                ? _value.quarterSheet
                : quarterSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        totalSheets:
            freezed == totalSheets
                ? _value.totalSheets
                : totalSheets // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Ms08Impl implements _Ms08 {
  const _$Ms08Impl({
    @JsonKey(name: 'ms_0_8_mm_full_sheet') this.fullSheet,
    @JsonKey(name: 'ms_0_8_mm_half_sheet') this.halfSheet,
    @JsonKey(name: 'ms_0_8_mm_quarter_sheet') this.quarterSheet,
    @JsonKey(name: 'ms_0_8_mm_total_sheets') this.totalSheets,
  });

  factory _$Ms08Impl.fromJson(Map<String, dynamic> json) =>
      _$$Ms08ImplFromJson(json);

  @override
  @JsonKey(name: 'ms_0_8_mm_full_sheet')
  final int? fullSheet;
  @override
  @JsonKey(name: 'ms_0_8_mm_half_sheet')
  final int? halfSheet;
  @override
  @JsonKey(name: 'ms_0_8_mm_quarter_sheet')
  final int? quarterSheet;
  @override
  @JsonKey(name: 'ms_0_8_mm_total_sheets')
  final int? totalSheets;

  @override
  String toString() {
    return 'Ms08(fullSheet: $fullSheet, halfSheet: $halfSheet, quarterSheet: $quarterSheet, totalSheets: $totalSheets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Ms08Impl &&
            (identical(other.fullSheet, fullSheet) ||
                other.fullSheet == fullSheet) &&
            (identical(other.halfSheet, halfSheet) ||
                other.halfSheet == halfSheet) &&
            (identical(other.quarterSheet, quarterSheet) ||
                other.quarterSheet == quarterSheet) &&
            (identical(other.totalSheets, totalSheets) ||
                other.totalSheets == totalSheets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullSheet, halfSheet, quarterSheet, totalSheets);

  /// Create a copy of Ms08
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Ms08ImplCopyWith<_$Ms08Impl> get copyWith =>
      __$$Ms08ImplCopyWithImpl<_$Ms08Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Ms08ImplToJson(this);
  }
}

abstract class _Ms08 implements Ms08 {
  const factory _Ms08({
    @JsonKey(name: 'ms_0_8_mm_full_sheet') final int? fullSheet,
    @JsonKey(name: 'ms_0_8_mm_half_sheet') final int? halfSheet,
    @JsonKey(name: 'ms_0_8_mm_quarter_sheet') final int? quarterSheet,
    @JsonKey(name: 'ms_0_8_mm_total_sheets') final int? totalSheets,
  }) = _$Ms08Impl;

  factory _Ms08.fromJson(Map<String, dynamic> json) = _$Ms08Impl.fromJson;

  @override
  @JsonKey(name: 'ms_0_8_mm_full_sheet')
  int? get fullSheet;
  @override
  @JsonKey(name: 'ms_0_8_mm_half_sheet')
  int? get halfSheet;
  @override
  @JsonKey(name: 'ms_0_8_mm_quarter_sheet')
  int? get quarterSheet;
  @override
  @JsonKey(name: 'ms_0_8_mm_total_sheets')
  int? get totalSheets;

  /// Create a copy of Ms08
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Ms08ImplCopyWith<_$Ms08Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ms10 _$Ms10FromJson(Map<String, dynamic> json) {
  return _Ms10.fromJson(json);
}

/// @nodoc
mixin _$Ms10 {
  @JsonKey(name: 'ms_1_0_mm_full_sheet')
  int? get fullSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ms_1_0_mm_half_sheet')
  int? get halfSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ms_1_0_mm_quarter_sheet')
  int? get quarterSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ms_1_0_mm_total_sheets')
  int? get totalSheets => throw _privateConstructorUsedError;

  /// Serializes this Ms10 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ms10
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Ms10CopyWith<Ms10> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Ms10CopyWith<$Res> {
  factory $Ms10CopyWith(Ms10 value, $Res Function(Ms10) then) =
      _$Ms10CopyWithImpl<$Res, Ms10>;
  @useResult
  $Res call({
    @JsonKey(name: 'ms_1_0_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ms_1_0_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ms_1_0_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ms_1_0_mm_total_sheets') int? totalSheets,
  });
}

/// @nodoc
class _$Ms10CopyWithImpl<$Res, $Val extends Ms10>
    implements $Ms10CopyWith<$Res> {
  _$Ms10CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ms10
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSheet = freezed,
    Object? halfSheet = freezed,
    Object? quarterSheet = freezed,
    Object? totalSheets = freezed,
  }) {
    return _then(
      _value.copyWith(
            fullSheet:
                freezed == fullSheet
                    ? _value.fullSheet
                    : fullSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            halfSheet:
                freezed == halfSheet
                    ? _value.halfSheet
                    : halfSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            quarterSheet:
                freezed == quarterSheet
                    ? _value.quarterSheet
                    : quarterSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            totalSheets:
                freezed == totalSheets
                    ? _value.totalSheets
                    : totalSheets // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Ms10ImplCopyWith<$Res> implements $Ms10CopyWith<$Res> {
  factory _$$Ms10ImplCopyWith(
    _$Ms10Impl value,
    $Res Function(_$Ms10Impl) then,
  ) = __$$Ms10ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'ms_1_0_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ms_1_0_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ms_1_0_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ms_1_0_mm_total_sheets') int? totalSheets,
  });
}

/// @nodoc
class __$$Ms10ImplCopyWithImpl<$Res>
    extends _$Ms10CopyWithImpl<$Res, _$Ms10Impl>
    implements _$$Ms10ImplCopyWith<$Res> {
  __$$Ms10ImplCopyWithImpl(_$Ms10Impl _value, $Res Function(_$Ms10Impl) _then)
    : super(_value, _then);

  /// Create a copy of Ms10
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSheet = freezed,
    Object? halfSheet = freezed,
    Object? quarterSheet = freezed,
    Object? totalSheets = freezed,
  }) {
    return _then(
      _$Ms10Impl(
        fullSheet:
            freezed == fullSheet
                ? _value.fullSheet
                : fullSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        halfSheet:
            freezed == halfSheet
                ? _value.halfSheet
                : halfSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        quarterSheet:
            freezed == quarterSheet
                ? _value.quarterSheet
                : quarterSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        totalSheets:
            freezed == totalSheets
                ? _value.totalSheets
                : totalSheets // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Ms10Impl implements _Ms10 {
  const _$Ms10Impl({
    @JsonKey(name: 'ms_1_0_mm_full_sheet') this.fullSheet,
    @JsonKey(name: 'ms_1_0_mm_half_sheet') this.halfSheet,
    @JsonKey(name: 'ms_1_0_mm_quarter_sheet') this.quarterSheet,
    @JsonKey(name: 'ms_1_0_mm_total_sheets') this.totalSheets,
  });

  factory _$Ms10Impl.fromJson(Map<String, dynamic> json) =>
      _$$Ms10ImplFromJson(json);

  @override
  @JsonKey(name: 'ms_1_0_mm_full_sheet')
  final int? fullSheet;
  @override
  @JsonKey(name: 'ms_1_0_mm_half_sheet')
  final int? halfSheet;
  @override
  @JsonKey(name: 'ms_1_0_mm_quarter_sheet')
  final int? quarterSheet;
  @override
  @JsonKey(name: 'ms_1_0_mm_total_sheets')
  final int? totalSheets;

  @override
  String toString() {
    return 'Ms10(fullSheet: $fullSheet, halfSheet: $halfSheet, quarterSheet: $quarterSheet, totalSheets: $totalSheets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Ms10Impl &&
            (identical(other.fullSheet, fullSheet) ||
                other.fullSheet == fullSheet) &&
            (identical(other.halfSheet, halfSheet) ||
                other.halfSheet == halfSheet) &&
            (identical(other.quarterSheet, quarterSheet) ||
                other.quarterSheet == quarterSheet) &&
            (identical(other.totalSheets, totalSheets) ||
                other.totalSheets == totalSheets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullSheet, halfSheet, quarterSheet, totalSheets);

  /// Create a copy of Ms10
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Ms10ImplCopyWith<_$Ms10Impl> get copyWith =>
      __$$Ms10ImplCopyWithImpl<_$Ms10Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Ms10ImplToJson(this);
  }
}

abstract class _Ms10 implements Ms10 {
  const factory _Ms10({
    @JsonKey(name: 'ms_1_0_mm_full_sheet') final int? fullSheet,
    @JsonKey(name: 'ms_1_0_mm_half_sheet') final int? halfSheet,
    @JsonKey(name: 'ms_1_0_mm_quarter_sheet') final int? quarterSheet,
    @JsonKey(name: 'ms_1_0_mm_total_sheets') final int? totalSheets,
  }) = _$Ms10Impl;

  factory _Ms10.fromJson(Map<String, dynamic> json) = _$Ms10Impl.fromJson;

  @override
  @JsonKey(name: 'ms_1_0_mm_full_sheet')
  int? get fullSheet;
  @override
  @JsonKey(name: 'ms_1_0_mm_half_sheet')
  int? get halfSheet;
  @override
  @JsonKey(name: 'ms_1_0_mm_quarter_sheet')
  int? get quarterSheet;
  @override
  @JsonKey(name: 'ms_1_0_mm_total_sheets')
  int? get totalSheets;

  /// Create a copy of Ms10
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Ms10ImplCopyWith<_$Ms10Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ms12 _$Ms12FromJson(Map<String, dynamic> json) {
  return _Ms12.fromJson(json);
}

/// @nodoc
mixin _$Ms12 {
  @JsonKey(name: 'ms_1_2_mm_full_sheet')
  int? get fullSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ms_1_2_mm_half_sheet')
  int? get halfSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ms_1_2_mm_quarter_sheet')
  int? get quarterSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ms_1_2_mm_total_sheets')
  int? get totalSheets => throw _privateConstructorUsedError;

  /// Serializes this Ms12 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ms12
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Ms12CopyWith<Ms12> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Ms12CopyWith<$Res> {
  factory $Ms12CopyWith(Ms12 value, $Res Function(Ms12) then) =
      _$Ms12CopyWithImpl<$Res, Ms12>;
  @useResult
  $Res call({
    @JsonKey(name: 'ms_1_2_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ms_1_2_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ms_1_2_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ms_1_2_mm_total_sheets') int? totalSheets,
  });
}

/// @nodoc
class _$Ms12CopyWithImpl<$Res, $Val extends Ms12>
    implements $Ms12CopyWith<$Res> {
  _$Ms12CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ms12
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSheet = freezed,
    Object? halfSheet = freezed,
    Object? quarterSheet = freezed,
    Object? totalSheets = freezed,
  }) {
    return _then(
      _value.copyWith(
            fullSheet:
                freezed == fullSheet
                    ? _value.fullSheet
                    : fullSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            halfSheet:
                freezed == halfSheet
                    ? _value.halfSheet
                    : halfSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            quarterSheet:
                freezed == quarterSheet
                    ? _value.quarterSheet
                    : quarterSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            totalSheets:
                freezed == totalSheets
                    ? _value.totalSheets
                    : totalSheets // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Ms12ImplCopyWith<$Res> implements $Ms12CopyWith<$Res> {
  factory _$$Ms12ImplCopyWith(
    _$Ms12Impl value,
    $Res Function(_$Ms12Impl) then,
  ) = __$$Ms12ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'ms_1_2_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ms_1_2_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ms_1_2_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ms_1_2_mm_total_sheets') int? totalSheets,
  });
}

/// @nodoc
class __$$Ms12ImplCopyWithImpl<$Res>
    extends _$Ms12CopyWithImpl<$Res, _$Ms12Impl>
    implements _$$Ms12ImplCopyWith<$Res> {
  __$$Ms12ImplCopyWithImpl(_$Ms12Impl _value, $Res Function(_$Ms12Impl) _then)
    : super(_value, _then);

  /// Create a copy of Ms12
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSheet = freezed,
    Object? halfSheet = freezed,
    Object? quarterSheet = freezed,
    Object? totalSheets = freezed,
  }) {
    return _then(
      _$Ms12Impl(
        fullSheet:
            freezed == fullSheet
                ? _value.fullSheet
                : fullSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        halfSheet:
            freezed == halfSheet
                ? _value.halfSheet
                : halfSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        quarterSheet:
            freezed == quarterSheet
                ? _value.quarterSheet
                : quarterSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        totalSheets:
            freezed == totalSheets
                ? _value.totalSheets
                : totalSheets // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Ms12Impl implements _Ms12 {
  const _$Ms12Impl({
    @JsonKey(name: 'ms_1_2_mm_full_sheet') this.fullSheet,
    @JsonKey(name: 'ms_1_2_mm_half_sheet') this.halfSheet,
    @JsonKey(name: 'ms_1_2_mm_quarter_sheet') this.quarterSheet,
    @JsonKey(name: 'ms_1_2_mm_total_sheets') this.totalSheets,
  });

  factory _$Ms12Impl.fromJson(Map<String, dynamic> json) =>
      _$$Ms12ImplFromJson(json);

  @override
  @JsonKey(name: 'ms_1_2_mm_full_sheet')
  final int? fullSheet;
  @override
  @JsonKey(name: 'ms_1_2_mm_half_sheet')
  final int? halfSheet;
  @override
  @JsonKey(name: 'ms_1_2_mm_quarter_sheet')
  final int? quarterSheet;
  @override
  @JsonKey(name: 'ms_1_2_mm_total_sheets')
  final int? totalSheets;

  @override
  String toString() {
    return 'Ms12(fullSheet: $fullSheet, halfSheet: $halfSheet, quarterSheet: $quarterSheet, totalSheets: $totalSheets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Ms12Impl &&
            (identical(other.fullSheet, fullSheet) ||
                other.fullSheet == fullSheet) &&
            (identical(other.halfSheet, halfSheet) ||
                other.halfSheet == halfSheet) &&
            (identical(other.quarterSheet, quarterSheet) ||
                other.quarterSheet == quarterSheet) &&
            (identical(other.totalSheets, totalSheets) ||
                other.totalSheets == totalSheets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullSheet, halfSheet, quarterSheet, totalSheets);

  /// Create a copy of Ms12
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Ms12ImplCopyWith<_$Ms12Impl> get copyWith =>
      __$$Ms12ImplCopyWithImpl<_$Ms12Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Ms12ImplToJson(this);
  }
}

abstract class _Ms12 implements Ms12 {
  const factory _Ms12({
    @JsonKey(name: 'ms_1_2_mm_full_sheet') final int? fullSheet,
    @JsonKey(name: 'ms_1_2_mm_half_sheet') final int? halfSheet,
    @JsonKey(name: 'ms_1_2_mm_quarter_sheet') final int? quarterSheet,
    @JsonKey(name: 'ms_1_2_mm_total_sheets') final int? totalSheets,
  }) = _$Ms12Impl;

  factory _Ms12.fromJson(Map<String, dynamic> json) = _$Ms12Impl.fromJson;

  @override
  @JsonKey(name: 'ms_1_2_mm_full_sheet')
  int? get fullSheet;
  @override
  @JsonKey(name: 'ms_1_2_mm_half_sheet')
  int? get halfSheet;
  @override
  @JsonKey(name: 'ms_1_2_mm_quarter_sheet')
  int? get quarterSheet;
  @override
  @JsonKey(name: 'ms_1_2_mm_total_sheets')
  int? get totalSheets;

  /// Create a copy of Ms12
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Ms12ImplCopyWith<_$Ms12Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ss08 _$Ss08FromJson(Map<String, dynamic> json) {
  return _Ss08.fromJson(json);
}

/// @nodoc
mixin _$Ss08 {
  @JsonKey(name: 'ss_0_8_mm_full_sheet')
  int? get fullSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ss_0_8_mm_half_sheet')
  int? get halfSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ss_0_8_mm_quarter_sheet')
  int? get quarterSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ss_0_8_mm_total_sheets')
  int? get totalSheets => throw _privateConstructorUsedError;

  /// Serializes this Ss08 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ss08
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Ss08CopyWith<Ss08> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Ss08CopyWith<$Res> {
  factory $Ss08CopyWith(Ss08 value, $Res Function(Ss08) then) =
      _$Ss08CopyWithImpl<$Res, Ss08>;
  @useResult
  $Res call({
    @JsonKey(name: 'ss_0_8_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ss_0_8_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ss_0_8_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ss_0_8_mm_total_sheets') int? totalSheets,
  });
}

/// @nodoc
class _$Ss08CopyWithImpl<$Res, $Val extends Ss08>
    implements $Ss08CopyWith<$Res> {
  _$Ss08CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ss08
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSheet = freezed,
    Object? halfSheet = freezed,
    Object? quarterSheet = freezed,
    Object? totalSheets = freezed,
  }) {
    return _then(
      _value.copyWith(
            fullSheet:
                freezed == fullSheet
                    ? _value.fullSheet
                    : fullSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            halfSheet:
                freezed == halfSheet
                    ? _value.halfSheet
                    : halfSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            quarterSheet:
                freezed == quarterSheet
                    ? _value.quarterSheet
                    : quarterSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            totalSheets:
                freezed == totalSheets
                    ? _value.totalSheets
                    : totalSheets // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Ss08ImplCopyWith<$Res> implements $Ss08CopyWith<$Res> {
  factory _$$Ss08ImplCopyWith(
    _$Ss08Impl value,
    $Res Function(_$Ss08Impl) then,
  ) = __$$Ss08ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'ss_0_8_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ss_0_8_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ss_0_8_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ss_0_8_mm_total_sheets') int? totalSheets,
  });
}

/// @nodoc
class __$$Ss08ImplCopyWithImpl<$Res>
    extends _$Ss08CopyWithImpl<$Res, _$Ss08Impl>
    implements _$$Ss08ImplCopyWith<$Res> {
  __$$Ss08ImplCopyWithImpl(_$Ss08Impl _value, $Res Function(_$Ss08Impl) _then)
    : super(_value, _then);

  /// Create a copy of Ss08
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSheet = freezed,
    Object? halfSheet = freezed,
    Object? quarterSheet = freezed,
    Object? totalSheets = freezed,
  }) {
    return _then(
      _$Ss08Impl(
        fullSheet:
            freezed == fullSheet
                ? _value.fullSheet
                : fullSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        halfSheet:
            freezed == halfSheet
                ? _value.halfSheet
                : halfSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        quarterSheet:
            freezed == quarterSheet
                ? _value.quarterSheet
                : quarterSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        totalSheets:
            freezed == totalSheets
                ? _value.totalSheets
                : totalSheets // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Ss08Impl implements _Ss08 {
  const _$Ss08Impl({
    @JsonKey(name: 'ss_0_8_mm_full_sheet') this.fullSheet,
    @JsonKey(name: 'ss_0_8_mm_half_sheet') this.halfSheet,
    @JsonKey(name: 'ss_0_8_mm_quarter_sheet') this.quarterSheet,
    @JsonKey(name: 'ss_0_8_mm_total_sheets') this.totalSheets,
  });

  factory _$Ss08Impl.fromJson(Map<String, dynamic> json) =>
      _$$Ss08ImplFromJson(json);

  @override
  @JsonKey(name: 'ss_0_8_mm_full_sheet')
  final int? fullSheet;
  @override
  @JsonKey(name: 'ss_0_8_mm_half_sheet')
  final int? halfSheet;
  @override
  @JsonKey(name: 'ss_0_8_mm_quarter_sheet')
  final int? quarterSheet;
  @override
  @JsonKey(name: 'ss_0_8_mm_total_sheets')
  final int? totalSheets;

  @override
  String toString() {
    return 'Ss08(fullSheet: $fullSheet, halfSheet: $halfSheet, quarterSheet: $quarterSheet, totalSheets: $totalSheets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Ss08Impl &&
            (identical(other.fullSheet, fullSheet) ||
                other.fullSheet == fullSheet) &&
            (identical(other.halfSheet, halfSheet) ||
                other.halfSheet == halfSheet) &&
            (identical(other.quarterSheet, quarterSheet) ||
                other.quarterSheet == quarterSheet) &&
            (identical(other.totalSheets, totalSheets) ||
                other.totalSheets == totalSheets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullSheet, halfSheet, quarterSheet, totalSheets);

  /// Create a copy of Ss08
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Ss08ImplCopyWith<_$Ss08Impl> get copyWith =>
      __$$Ss08ImplCopyWithImpl<_$Ss08Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Ss08ImplToJson(this);
  }
}

abstract class _Ss08 implements Ss08 {
  const factory _Ss08({
    @JsonKey(name: 'ss_0_8_mm_full_sheet') final int? fullSheet,
    @JsonKey(name: 'ss_0_8_mm_half_sheet') final int? halfSheet,
    @JsonKey(name: 'ss_0_8_mm_quarter_sheet') final int? quarterSheet,
    @JsonKey(name: 'ss_0_8_mm_total_sheets') final int? totalSheets,
  }) = _$Ss08Impl;

  factory _Ss08.fromJson(Map<String, dynamic> json) = _$Ss08Impl.fromJson;

  @override
  @JsonKey(name: 'ss_0_8_mm_full_sheet')
  int? get fullSheet;
  @override
  @JsonKey(name: 'ss_0_8_mm_half_sheet')
  int? get halfSheet;
  @override
  @JsonKey(name: 'ss_0_8_mm_quarter_sheet')
  int? get quarterSheet;
  @override
  @JsonKey(name: 'ss_0_8_mm_total_sheets')
  int? get totalSheets;

  /// Create a copy of Ss08
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Ss08ImplCopyWith<_$Ss08Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ss10 _$Ss10FromJson(Map<String, dynamic> json) {
  return _Ss10.fromJson(json);
}

/// @nodoc
mixin _$Ss10 {
  @JsonKey(name: 'ss_1_0_mm_full_sheet')
  int? get fullSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ss_1_0_mm_half_sheet')
  int? get halfSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ss_1_0_mm_quarter_sheet')
  int? get quarterSheet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ss_1_0_mm_total_sheets')
  int? get totalSheets => throw _privateConstructorUsedError;

  /// Serializes this Ss10 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ss10
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Ss10CopyWith<Ss10> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Ss10CopyWith<$Res> {
  factory $Ss10CopyWith(Ss10 value, $Res Function(Ss10) then) =
      _$Ss10CopyWithImpl<$Res, Ss10>;
  @useResult
  $Res call({
    @JsonKey(name: 'ss_1_0_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ss_1_0_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ss_1_0_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ss_1_0_mm_total_sheets') int? totalSheets,
  });
}

/// @nodoc
class _$Ss10CopyWithImpl<$Res, $Val extends Ss10>
    implements $Ss10CopyWith<$Res> {
  _$Ss10CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ss10
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSheet = freezed,
    Object? halfSheet = freezed,
    Object? quarterSheet = freezed,
    Object? totalSheets = freezed,
  }) {
    return _then(
      _value.copyWith(
            fullSheet:
                freezed == fullSheet
                    ? _value.fullSheet
                    : fullSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            halfSheet:
                freezed == halfSheet
                    ? _value.halfSheet
                    : halfSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            quarterSheet:
                freezed == quarterSheet
                    ? _value.quarterSheet
                    : quarterSheet // ignore: cast_nullable_to_non_nullable
                        as int?,
            totalSheets:
                freezed == totalSheets
                    ? _value.totalSheets
                    : totalSheets // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Ss10ImplCopyWith<$Res> implements $Ss10CopyWith<$Res> {
  factory _$$Ss10ImplCopyWith(
    _$Ss10Impl value,
    $Res Function(_$Ss10Impl) then,
  ) = __$$Ss10ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'ss_1_0_mm_full_sheet') int? fullSheet,
    @JsonKey(name: 'ss_1_0_mm_half_sheet') int? halfSheet,
    @JsonKey(name: 'ss_1_0_mm_quarter_sheet') int? quarterSheet,
    @JsonKey(name: 'ss_1_0_mm_total_sheets') int? totalSheets,
  });
}

/// @nodoc
class __$$Ss10ImplCopyWithImpl<$Res>
    extends _$Ss10CopyWithImpl<$Res, _$Ss10Impl>
    implements _$$Ss10ImplCopyWith<$Res> {
  __$$Ss10ImplCopyWithImpl(_$Ss10Impl _value, $Res Function(_$Ss10Impl) _then)
    : super(_value, _then);

  /// Create a copy of Ss10
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSheet = freezed,
    Object? halfSheet = freezed,
    Object? quarterSheet = freezed,
    Object? totalSheets = freezed,
  }) {
    return _then(
      _$Ss10Impl(
        fullSheet:
            freezed == fullSheet
                ? _value.fullSheet
                : fullSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        halfSheet:
            freezed == halfSheet
                ? _value.halfSheet
                : halfSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        quarterSheet:
            freezed == quarterSheet
                ? _value.quarterSheet
                : quarterSheet // ignore: cast_nullable_to_non_nullable
                    as int?,
        totalSheets:
            freezed == totalSheets
                ? _value.totalSheets
                : totalSheets // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$Ss10Impl implements _Ss10 {
  const _$Ss10Impl({
    @JsonKey(name: 'ss_1_0_mm_full_sheet') this.fullSheet,
    @JsonKey(name: 'ss_1_0_mm_half_sheet') this.halfSheet,
    @JsonKey(name: 'ss_1_0_mm_quarter_sheet') this.quarterSheet,
    @JsonKey(name: 'ss_1_0_mm_total_sheets') this.totalSheets,
  });

  factory _$Ss10Impl.fromJson(Map<String, dynamic> json) =>
      _$$Ss10ImplFromJson(json);

  @override
  @JsonKey(name: 'ss_1_0_mm_full_sheet')
  final int? fullSheet;
  @override
  @JsonKey(name: 'ss_1_0_mm_half_sheet')
  final int? halfSheet;
  @override
  @JsonKey(name: 'ss_1_0_mm_quarter_sheet')
  final int? quarterSheet;
  @override
  @JsonKey(name: 'ss_1_0_mm_total_sheets')
  final int? totalSheets;

  @override
  String toString() {
    return 'Ss10(fullSheet: $fullSheet, halfSheet: $halfSheet, quarterSheet: $quarterSheet, totalSheets: $totalSheets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Ss10Impl &&
            (identical(other.fullSheet, fullSheet) ||
                other.fullSheet == fullSheet) &&
            (identical(other.halfSheet, halfSheet) ||
                other.halfSheet == halfSheet) &&
            (identical(other.quarterSheet, quarterSheet) ||
                other.quarterSheet == quarterSheet) &&
            (identical(other.totalSheets, totalSheets) ||
                other.totalSheets == totalSheets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullSheet, halfSheet, quarterSheet, totalSheets);

  /// Create a copy of Ss10
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Ss10ImplCopyWith<_$Ss10Impl> get copyWith =>
      __$$Ss10ImplCopyWithImpl<_$Ss10Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Ss10ImplToJson(this);
  }
}

abstract class _Ss10 implements Ss10 {
  const factory _Ss10({
    @JsonKey(name: 'ss_1_0_mm_full_sheet') final int? fullSheet,
    @JsonKey(name: 'ss_1_0_mm_half_sheet') final int? halfSheet,
    @JsonKey(name: 'ss_1_0_mm_quarter_sheet') final int? quarterSheet,
    @JsonKey(name: 'ss_1_0_mm_total_sheets') final int? totalSheets,
  }) = _$Ss10Impl;

  factory _Ss10.fromJson(Map<String, dynamic> json) = _$Ss10Impl.fromJson;

  @override
  @JsonKey(name: 'ss_1_0_mm_full_sheet')
  int? get fullSheet;
  @override
  @JsonKey(name: 'ss_1_0_mm_half_sheet')
  int? get halfSheet;
  @override
  @JsonKey(name: 'ss_1_0_mm_quarter_sheet')
  int? get quarterSheet;
  @override
  @JsonKey(name: 'ss_1_0_mm_total_sheets')
  int? get totalSheets;

  /// Create a copy of Ss10
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Ss10ImplCopyWith<_$Ss10Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
