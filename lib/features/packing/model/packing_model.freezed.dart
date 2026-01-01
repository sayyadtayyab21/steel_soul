// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PackingModel _$PackingModelFromJson(Map<String, dynamic> json) {
  return _PackingModel.fromJson(json);
}

/// @nodoc
mixin _$PackingModel {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  String? get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'time')
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_phone_number')
  String? get customerPhoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'packing_status')
  String? get laserCuttingStatus => throw _privateConstructorUsedError;

  /// Serializes this PackingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackingModelCopyWith<PackingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackingModelCopyWith<$Res> {
  factory $PackingModelCopyWith(
    PackingModel value,
    $Res Function(PackingModel) then,
  ) = _$PackingModelCopyWithImpl<$Res, PackingModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'project_id') String? projectId,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'customer_phone_number') String? customerPhoneNumber,
    @JsonKey(name: 'packing_status') String? laserCuttingStatus,
  });
}

/// @nodoc
class _$PackingModelCopyWithImpl<$Res, $Val extends PackingModel>
    implements $PackingModelCopyWith<$Res> {
  _$PackingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackingModel
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
  }) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            customerName: freezed == customerName
                ? _value.customerName
                : customerName // ignore: cast_nullable_to_non_nullable
                      as String?,
            projectId: freezed == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as String?,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String?,
            time: freezed == time
                ? _value.time
                : time // ignore: cast_nullable_to_non_nullable
                      as String?,
            customerPhoneNumber: freezed == customerPhoneNumber
                ? _value.customerPhoneNumber
                : customerPhoneNumber // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PackingModelImplCopyWith<$Res>
    implements $PackingModelCopyWith<$Res> {
  factory _$$PackingModelImplCopyWith(
    _$PackingModelImpl value,
    $Res Function(_$PackingModelImpl) then,
  ) = __$$PackingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'project_id') String? projectId,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'customer_phone_number') String? customerPhoneNumber,
    @JsonKey(name: 'packing_status') String? laserCuttingStatus,
  });
}

/// @nodoc
class __$$PackingModelImplCopyWithImpl<$Res>
    extends _$PackingModelCopyWithImpl<$Res, _$PackingModelImpl>
    implements _$$PackingModelImplCopyWith<$Res> {
  __$$PackingModelImplCopyWithImpl(
    _$PackingModelImpl _value,
    $Res Function(_$PackingModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PackingModel
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
  }) {
    return _then(
      _$PackingModelImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        customerName: freezed == customerName
            ? _value.customerName
            : customerName // ignore: cast_nullable_to_non_nullable
                  as String?,
        projectId: freezed == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String?,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String?,
        time: freezed == time
            ? _value.time
            : time // ignore: cast_nullable_to_non_nullable
                  as String?,
        customerPhoneNumber: freezed == customerPhoneNumber
            ? _value.customerPhoneNumber
            : customerPhoneNumber // ignore: cast_nullable_to_non_nullable
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
class _$PackingModelImpl extends _PackingModel {
  const _$PackingModelImpl({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'customer_name') this.customerName,
    @JsonKey(name: 'project_id') this.projectId,
    @JsonKey(name: 'date') this.date,
    @JsonKey(name: 'time') this.time,
    @JsonKey(name: 'customer_phone_number') this.customerPhoneNumber,
    @JsonKey(name: 'packing_status') this.laserCuttingStatus,
  }) : super._();

  factory _$PackingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackingModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'customer_name')
  final String? customerName;
  @override
  @JsonKey(name: 'project_id')
  final String? projectId;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'time')
  final String? time;
  @override
  @JsonKey(name: 'customer_phone_number')
  final String? customerPhoneNumber;
  @override
  @JsonKey(name: 'packing_status')
  final String? laserCuttingStatus;

  @override
  String toString() {
    return 'PackingModel(name: $name, customerName: $customerName, projectId: $projectId, date: $date, time: $time, customerPhoneNumber: $customerPhoneNumber, laserCuttingStatus: $laserCuttingStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackingModelImpl &&
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
                other.laserCuttingStatus == laserCuttingStatus));
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
  );

  /// Create a copy of PackingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackingModelImplCopyWith<_$PackingModelImpl> get copyWith =>
      __$$PackingModelImplCopyWithImpl<_$PackingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackingModelImplToJson(this);
  }
}

abstract class _PackingModel extends PackingModel {
  const factory _PackingModel({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'customer_name') final String? customerName,
    @JsonKey(name: 'project_id') final String? projectId,
    @JsonKey(name: 'date') final String? date,
    @JsonKey(name: 'time') final String? time,
    @JsonKey(name: 'customer_phone_number') final String? customerPhoneNumber,
    @JsonKey(name: 'packing_status') final String? laserCuttingStatus,
  }) = _$PackingModelImpl;
  const _PackingModel._() : super._();

  factory _PackingModel.fromJson(Map<String, dynamic> json) =
      _$PackingModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'customer_name')
  String? get customerName;
  @override
  @JsonKey(name: 'project_id')
  String? get projectId;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'time')
  String? get time;
  @override
  @JsonKey(name: 'customer_phone_number')
  String? get customerPhoneNumber;
  @override
  @JsonKey(name: 'packing_status')
  String? get laserCuttingStatus;

  /// Create a copy of PackingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackingModelImplCopyWith<_$PackingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
