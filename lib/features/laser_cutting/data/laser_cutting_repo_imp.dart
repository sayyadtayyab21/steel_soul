import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

import 'package:steel_soul/core/core.dart';

import 'package:steel_soul/features/laser_cutting/data/laser_cutting_repo.dart';

import 'package:steel_soul/features/laser_cutting/model/laser_cutting_model.dart';
import 'package:steel_soul/features/laser_cutting/model/laser_item_model.dart';
import 'package:steel_soul/features/laser_cutting/model/panel_status_model.dart';
import 'package:steel_soul/features/laser_cutting/model/scanner_details_model.dart';
import 'package:steel_soul/features/laser_cutting/model/text_scanner_model.dart';
import 'package:steel_soul/features/laser_cutting/model/update_sheet_model.dart';

@LazySingleton(as: LaserCuttingRepo)
class LaserCuttingRepoImp extends BaseApiRepository
    implements LaserCuttingRepo {
  const LaserCuttingRepoImp(super.client);

  @override
  AsyncValueOf<List<LaserCuttingList>> fetchLaserCuttings() async {
    final requestConfig = RequestConfig(
      url: Urls.projectList,
      parser: (json) {
        print(json);
        final data = json['message'];

        // Check if data is actually a List
        if (data is List) {
          return data
              .map((e) => LaserCuttingList.fromJson(e as Map<String, dynamic>))
              .toList();
        } else {
          // Return empty list if data is null or not a list to avoid crashes
          return <LaserCuttingList>[];
        }
      },
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      reqParams: {'section_name': 'Laser Cutting'},
    );
    log('laser cutting requesting...:$requestConfig');
    final response = await post(requestConfig);
    log('Laser cutting response: $response');
    return response.process((r) => right(r.data!));
  }

  @override
  AsyncValueOf<List<LaserItemModel>> fetchLaserCuttingItemDetails(
    String project,
  ) async {
    final requestConfig = RequestConfig(
      url: Urls.getUnits,
      parser: (json) {
        print(json);
        final data = json['message'];
        final listdata = data as List<dynamic>;
        return listdata.map((e) => LaserItemModel.fromJson(e)).toList();
      },
      reqParams: {'section_name': 'Laser Cutting', 'project': project},
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    );
    log('laser cutting item details requesting...:$requestConfig');
    final response = await post(requestConfig);
    log('Laser cutting item details response: $response');
    return response.process((r) => right(r.data!));
  }

 @override
AsyncValueOf<TextScannerModel> textScannerUpload(
  String base64DataUri, 
  String captureTime, 
) async {
  
  final bodyData = jsonEncode({
    'files': [
      {
        'filedata': base64DataUri,
        'time_of_scan': captureTime, // Include time here if it's per file
      },
    ],
   
  });

  final requestConfig = RequestConfig(
    url: Urls.scannerCubit,
    parser: (json) {
      final data = json['message'] as Map<String, dynamic>;
      return TextScannerModel.fromJson(data);
    },
    body: bodyData,
    headers: {HttpHeaders.contentTypeHeader: 'application/json'},
  );
  
  log('Text scanner request: $requestConfig');

  final response = await post(requestConfig);
    log('Text scanner response: $response');
  return response.process((r) => right(r.data!));

}
 
  @override
  AsyncValueOf<List<SacnnerDetailsModel>> fetchLaserCuttingScanDetails(
    String project,
    String unit,
  ) async {
    final requestConfig = RequestConfig(
      url: Urls.getPanleList,
      parser: (json) {
        print(json);
        final data = json['message'];
        final listdata = data as List<dynamic>;
        return listdata.map((e) => SacnnerDetailsModel.fromJson(e)).toList();
      },

      reqParams: {
        'section_name': 'Laser Cutting',
        'project': project,
        'unit': unit,
      },
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    );
    log('Laser cutting scan details requesting...:$requestConfig');
    final response = await post(requestConfig);
    log('Laser cutting scan details response: $response');
    return response.process((r) => right(r.data!));
  }


 @override
AsyncValueOf<PanelStatusModel> fetchLaserCuttingPanelDetails(
  List<String> scannerPanelIds,   // <-- changed from String to List<String>
  String? file,
  String? timeOfScan,
) async {
  // 1. Create the payload map
  final Map<String, dynamic> payload = {
    'section_name': 'Laser Cutting',
    'scanned_panel_id': scannerPanelIds, // list is serialized as a JSON array
    'file': file, // This is your base64 string
    'time_of_scan': timeOfScan,
  };

  final requestConfig = RequestConfig(
    url: Urls.getPanel,
    parser: (json) {
      final Map<String, dynamic> data = json['message'] as Map<String, dynamic>;
      return PanelStatusModel.fromJson(data);
    },
    reqParams: null,
    body: jsonEncode(payload),
    headers: {HttpHeaders.contentTypeHeader: 'application/json'},
  );

  log('Laser cutting panel details request: $requestConfig');

  final response = await post(requestConfig);
  log('Laser cutting panel details response: $response');

  return response.process((r) => right(r.data!));
}

@override
AsyncValueOf<UpdateSheetModel> updateSheetCount(
  String projectId,
  final String sheetType,
  int fullSheetCount,
  int halfSheetCount,
  int quarterSheetCount,
) async {
  final requestConfig = RequestConfig(
    url: Urls.updateSheetCount,
    parser: (json) {
      final data = json['message'];
      if (data is Map<String, dynamic>) {
        return UpdateSheetModel.fromJson(data);
      } else if (data is List && data.isEmpty) {
        return const UpdateSheetModel(status: 'success', message: 'Updated');
      }
      throw FormatException('Unexpected response: $data');
    },
    headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    reqParams: {
      'project': projectId,
      'sheet_type':sheetType,
      'full_sheet': fullSheetCount,
      'half_sheet': halfSheetCount,
      'quarter_sheet': quarterSheetCount,
    },
  );

    log('Update sheet count request: $requestConfig');
  final response = await post(requestConfig);
  log('Update sheet count response: $response');
  
  return response.process((r) => right(r.data!));
}
  
}
