// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laser_cutting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaserCuttingResponseImpl _$$LaserCuttingResponseImplFromJson(
  Map<String, dynamic> json,
) => _$LaserCuttingResponseImpl(
  message:
      (json['message'] as List<dynamic>)
          .map((e) => LaserCuttingList.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$LaserCuttingResponseImplToJson(
  _$LaserCuttingResponseImpl instance,
) => <String, dynamic>{'message': instance.message};

_$LaserCuttingListImpl _$$LaserCuttingListImplFromJson(
  Map<String, dynamic> json,
) => _$LaserCuttingListImpl(
  name: json['name'] as String?,
  customerName: json['customer_name'] as String?,
  projectId: json['project_id'] as String?,
  date: json['date'] as String?,
  time: json['time'] as String?,
  customerPhoneNumber: json['customer_phone_number'] as String?,
  laserCuttingStatus: json['laser_cutting_status'] as String?,
  ms06:
      json['MS 0.6 mm'] == null
          ? null
          : Ms06.fromJson(json['MS 0.6 mm'] as Map<String, dynamic>),
  ms08:
      json['MS 0.8 mm'] == null
          ? null
          : Ms08.fromJson(json['MS 0.8 mm'] as Map<String, dynamic>),
  ms10:
      json['MS 1.0 mm'] == null
          ? null
          : Ms10.fromJson(json['MS 1.0 mm'] as Map<String, dynamic>),
  ms12:
      json['MS 1.2 mm'] == null
          ? null
          : Ms12.fromJson(json['MS 1.2 mm'] as Map<String, dynamic>),
  ss08:
      json['SS 0.8 mm'] == null
          ? null
          : Ss08.fromJson(json['SS 0.8 mm'] as Map<String, dynamic>),
  ss10:
      json['SS 1.0 mm'] == null
          ? null
          : Ss10.fromJson(json['SS 1.0 mm'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$LaserCuttingListImplToJson(
  _$LaserCuttingListImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'customer_name': instance.customerName,
  'project_id': instance.projectId,
  'date': instance.date,
  'time': instance.time,
  'customer_phone_number': instance.customerPhoneNumber,
  'laser_cutting_status': instance.laserCuttingStatus,
  'MS 0.6 mm': instance.ms06,
  'MS 0.8 mm': instance.ms08,
  'MS 1.0 mm': instance.ms10,
  'MS 1.2 mm': instance.ms12,
  'SS 0.8 mm': instance.ss08,
  'SS 1.0 mm': instance.ss10,
};

_$Ms06Impl _$$Ms06ImplFromJson(Map<String, dynamic> json) => _$Ms06Impl(
  fullSheet: (json['ms_0_6_mm_full_sheet'] as num?)?.toInt(),
  halfSheet: (json['ms_0_6_mm_half_sheet'] as num?)?.toInt(),
  quarterSheet: (json['ms_0_6_mm_quarter_sheet'] as num?)?.toInt(),
  totalSheets: (json['ms_0_6_mm_total_sheets'] as num?)?.toInt(),
);

Map<String, dynamic> _$$Ms06ImplToJson(_$Ms06Impl instance) =>
    <String, dynamic>{
      'ms_0_6_mm_full_sheet': instance.fullSheet,
      'ms_0_6_mm_half_sheet': instance.halfSheet,
      'ms_0_6_mm_quarter_sheet': instance.quarterSheet,
      'ms_0_6_mm_total_sheets': instance.totalSheets,
    };

_$Ms08Impl _$$Ms08ImplFromJson(Map<String, dynamic> json) => _$Ms08Impl(
  fullSheet: (json['ms_0_8_mm_full_sheet'] as num?)?.toInt(),
  halfSheet: (json['ms_0_8_mm_half_sheet'] as num?)?.toInt(),
  quarterSheet: (json['ms_0_8_mm_quarter_sheet'] as num?)?.toInt(),
  totalSheets: (json['ms_0_8_mm_total_sheets'] as num?)?.toInt(),
);

Map<String, dynamic> _$$Ms08ImplToJson(_$Ms08Impl instance) =>
    <String, dynamic>{
      'ms_0_8_mm_full_sheet': instance.fullSheet,
      'ms_0_8_mm_half_sheet': instance.halfSheet,
      'ms_0_8_mm_quarter_sheet': instance.quarterSheet,
      'ms_0_8_mm_total_sheets': instance.totalSheets,
    };

_$Ms10Impl _$$Ms10ImplFromJson(Map<String, dynamic> json) => _$Ms10Impl(
  fullSheet: (json['ms_1_0_mm_full_sheet'] as num?)?.toInt(),
  halfSheet: (json['ms_1_0_mm_half_sheet'] as num?)?.toInt(),
  quarterSheet: (json['ms_1_0_mm_quarter_sheet'] as num?)?.toInt(),
  totalSheets: (json['ms_1_0_mm_total_sheets'] as num?)?.toInt(),
);

Map<String, dynamic> _$$Ms10ImplToJson(_$Ms10Impl instance) =>
    <String, dynamic>{
      'ms_1_0_mm_full_sheet': instance.fullSheet,
      'ms_1_0_mm_half_sheet': instance.halfSheet,
      'ms_1_0_mm_quarter_sheet': instance.quarterSheet,
      'ms_1_0_mm_total_sheets': instance.totalSheets,
    };

_$Ms12Impl _$$Ms12ImplFromJson(Map<String, dynamic> json) => _$Ms12Impl(
  fullSheet: (json['ms_1_2_mm_full_sheet'] as num?)?.toInt(),
  halfSheet: (json['ms_1_2_mm_half_sheet'] as num?)?.toInt(),
  quarterSheet: (json['ms_1_2_mm_quarter_sheet'] as num?)?.toInt(),
  totalSheets: (json['ms_1_2_mm_total_sheets'] as num?)?.toInt(),
);

Map<String, dynamic> _$$Ms12ImplToJson(_$Ms12Impl instance) =>
    <String, dynamic>{
      'ms_1_2_mm_full_sheet': instance.fullSheet,
      'ms_1_2_mm_half_sheet': instance.halfSheet,
      'ms_1_2_mm_quarter_sheet': instance.quarterSheet,
      'ms_1_2_mm_total_sheets': instance.totalSheets,
    };

_$Ss08Impl _$$Ss08ImplFromJson(Map<String, dynamic> json) => _$Ss08Impl(
  fullSheet: (json['ss_0_8_mm_full_sheet'] as num?)?.toInt(),
  halfSheet: (json['ss_0_8_mm_half_sheet'] as num?)?.toInt(),
  quarterSheet: (json['ss_0_8_mm_quarter_sheet'] as num?)?.toInt(),
  totalSheets: (json['ss_0_8_mm_total_sheets'] as num?)?.toInt(),
);

Map<String, dynamic> _$$Ss08ImplToJson(_$Ss08Impl instance) =>
    <String, dynamic>{
      'ss_0_8_mm_full_sheet': instance.fullSheet,
      'ss_0_8_mm_half_sheet': instance.halfSheet,
      'ss_0_8_mm_quarter_sheet': instance.quarterSheet,
      'ss_0_8_mm_total_sheets': instance.totalSheets,
    };

_$Ss10Impl _$$Ss10ImplFromJson(Map<String, dynamic> json) => _$Ss10Impl(
  fullSheet: (json['ss_1_0_mm_full_sheet'] as num?)?.toInt(),
  halfSheet: (json['ss_1_0_mm_half_sheet'] as num?)?.toInt(),
  quarterSheet: (json['ss_1_0_mm_quarter_sheet'] as num?)?.toInt(),
  totalSheets: (json['ss_1_0_mm_total_sheets'] as num?)?.toInt(),
);

Map<String, dynamic> _$$Ss10ImplToJson(_$Ss10Impl instance) =>
    <String, dynamic>{
      'ss_1_0_mm_full_sheet': instance.fullSheet,
      'ss_1_0_mm_half_sheet': instance.halfSheet,
      'ss_1_0_mm_quarter_sheet': instance.quarterSheet,
      'ss_1_0_mm_total_sheets': instance.totalSheets,
    };
