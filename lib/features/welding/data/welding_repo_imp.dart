import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

import 'package:steel_soul/core/core.dart';
import 'package:steel_soul/features/welding/data/welding_repo.dart';
import 'package:steel_soul/features/welding/model/welding_projects_model.dart';
import 'package:steel_soul/features/welding/model/welding_units_model.dart';
import 'package:steel_soul/features/welding/model/panel_status_model.dart';
import 'package:steel_soul/features/welding/model/scanner_details_model.dart';
import 'package:steel_soul/features/welding/model/text_scanner_model.dart';
import 'package:steel_soul/features/welding/model/update_sheet_model.dart';





@LazySingleton(as: WeldingRepo)
class WeldingRepoImp extends BaseApiRepository
    implements WeldingRepo {
  const WeldingRepoImp(super.client);

  @override
  AsyncValueOf<List<WeldingProjectsModel>> fetchLaserCuttings() async {
    final requestConfig = RequestConfig(
      url: Urls.projectList,
      parser: (json) {
        print(json);
        final data = json['message'];

        // Check if data is actually a List
        if (data is List) {
          return data
              .map((e) => WeldingProjectsModel.fromJson(e as Map<String, dynamic>))
              .toList();
        } else {
          // Return empty list if data is null or not a list to avoid crashes
          return <WeldingProjectsModel>[];
        }
      },
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      reqParams: {'section_name': 'Welding'},
    );
    log('welding requesting...:$requestConfig');
    final response = await post(requestConfig);
    log('welding response: $response');
    return response.process((r) => right(r.data!));
  }

  @override
  AsyncValueOf<List<WeldingUnitsModel>> fetchLaserCuttingItemDetails(
    String project,
  ) async {
    final requestConfig = RequestConfig(
      url: Urls.getUnits,
      parser: (json) {
        print(json);
        final data = json['message'];
        final listdata = data as List<dynamic>;
        return listdata.map((e) => WeldingUnitsModel.fromJson(e)).toList();
      },
      reqParams: {'section_name': 'Welding', 'project': project},
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    );
    log('welding item details requesting...:$requestConfig');
    final response = await post(requestConfig);
    log('welding item details response: $response');
    return response.process((r) => right(r.data!));
  }

 @override
AsyncValueOf<TextScannerModel> textScannerUpload(
  String base64DataUri, 
  String captureTime, // 1. Add this named parameter
) async {
  // 2. Add the time_of_scan to your JSON payload
  final bodyData = jsonEncode({
    'files': [
      {
        'filedata': base64DataUri,
        'time_of_scan': captureTime, // Include time here if it's per file
      },
    ],
    // 'time_of_scan': captureTime, // OR include it here if it's for the whole request
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
  
  log('Text scanner upload request: $requestConfig');

  final response = await post(requestConfig);
  log('Response for Text Scanner Upload: $response');
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
        'section_name': 'Welding',
        'project': project,
        'unit': unit,
      },
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    );
    log('welding scan details requesting...:$requestConfig');
    final response = await post(requestConfig);
    log('welding scan details response: $response');
    return response.process((r) => right(r.data!));
  }



  @override
AsyncValueOf<PanelStatusModel> fetchLaserCuttingPanelDetails(
  List<String> scannerPanelId,
  String? file, 
  String? timeOfScan, // Add this optional parameter
) async {
  // 1. Create the payload map
  final Map<String, dynamic> payload = {
    'section_name': 'Welding',
    'scanned_panel_id': scannerPanelId,
    'file': file, // This is your base64 string
    'time_of_scan': timeOfScan, // Now correctly assigned
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

  log('Panel status request: $requestConfig');

  final response = await post(requestConfig);
  log('Response for Panel Status: $response');

  return response.process((r) => right(r.data!));
}


@override
AsyncValueOf<UpdateSheetModel> updateSheetCount(
  String projectId,
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
      'full_sheet': fullSheetCount,
      'half_sheet': halfSheetCount,
      'quarter_sheet': quarterSheetCount,
    },
  );

    log('Update sheet count request: $requestConfig');
  final response = await post(requestConfig);
  log('Response for Update Sheet Count: $response');
  
  return response.process((r) => right(r.data!));
}
  
}
