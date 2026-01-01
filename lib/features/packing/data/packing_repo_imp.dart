import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

import 'package:steel_soul/core/core.dart';
import 'package:steel_soul/features/packing/data/packing_repo.dart';
import 'package:steel_soul/features/packing/model/packing_model.dart';
import 'package:steel_soul/features/packing/model/packing_item_model.dart';
import 'package:steel_soul/features/packing/model/panel_status_model.dart';
import 'package:steel_soul/features/packing/model/scanner_details_model.dart';
import 'package:steel_soul/features/packing/model/text_scanner_model.dart';




@LazySingleton(as: PackingRepo)
class PackingRepoImp extends BaseApiRepository
    implements PackingRepo {
  const PackingRepoImp(super.client);

  @override
  AsyncValueOf<List<PackingModel>> fetchLaserCuttings() async {
    final requestConfig = RequestConfig(
      url: Urls.projectList,
      parser: (json) {
        print(json);
        final data = json['message'];

        // Check if data is actually a List
        if (data is List) {
          return data
              .map((e) => PackingModel.fromJson(e as Map<String, dynamic>))
              .toList();
        } else {
          // Return empty list if data is null or not a list to avoid crashes
          return <PackingModel>[];
        }
      },
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      reqParams: {'section_name': 'Packing'},
    );
    log('Packing requesting...:$requestConfig');
    final response = await post(requestConfig);
    log('................................$response');
    return response.process((r) => right(r.data!));
  }

  @override
  AsyncValueOf<List<PackingItemModel>> fetchLaserCuttingItemDetails(
    String project,
  ) async {
    final requestConfig = RequestConfig(
      url: Urls.getUnits,
      parser: (json) {
        print(json);
        final data = json['message'];
        final listdata = data as List<dynamic>;
        return listdata.map((e) => PackingItemModel.fromJson(e)).toList();
      },
      reqParams: {'section_name': 'Packing', 'project': project},
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    );
    log('Packing item details requesting...:$requestConfig');
    final response = await post(requestConfig);
    log('$response');
    return response.process((r) => right(r.data!));
  }

  @override
  AsyncValueOf<TextScannerModel> textScannerUpload(String base64DataUri,String captureTime)async {
    // Encode the data as JSON body instead of reqParams
    final bodyData = jsonEncode({
      'files': [
        {'filedata': base64DataUri,
        'time_of_scan':captureTime},
      ],
    });

    final requestConfig = RequestConfig(
      url: Urls.scannerCubit,
      parser: (json) {
        // Access the 'message' object as per your successful Postman response
        final data = json['message'] as Map<String, dynamic>;
        return TextScannerModel.fromJson(data);
      },
      // Send data in body, not reqParams (reqParams go to URL query string)
      body: bodyData,
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    );
    log('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$requestConfig');

    final response = await post(requestConfig);
    return response.process((r) => right(r.data!));
  }

  //   @override
  // AsyncValueOf<TextScannerModel> textScannerUpload(String base64DataUri) async {
  //   final requestConfig = RequestConfig(
  //     url: Urls.scannerCubit,
  //     parser: (json) {
  //       final Map<String, dynamic> data = json['message'] as Map<String, dynamic>;
  //       return TextScannerModel.fromJson(data);
  //     },
  //     reqParams: {
  //       'files': [
  //         {
  //           'filedata': base64DataUri,
  //           // 'filename': 'scan_${DateTime.now().millisecondsSinceEpoch}.jpg', // Add this
  //         }
  //       ],
  //     },
  //     headers: {
  //       HttpHeaders.contentTypeHeader: 'application/json',
  //       // Ensure the authorization header is correctly passed if not handled globally
  //     },
  //   );

  //   final response = await post(requestConfig);
  //   return response.process((r) => right(r.data!));
  // }

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
        'section_name': 'Packing',
        'project': project,
        'unit': unit,
      },
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    );
    log('Packing scan details requesting...:$requestConfig');
    final response = await post(requestConfig);
    log('$response');
    return response.process((r) => right(r.data!));
  }

  // @override
  // AsyncValueOf<PanelStatusModel> fetchLaserCuttingPanelDetails(
  //   // String project, String unitId,
  //   String scannerPanelId,
  //   String? file
  // ) async {
  //   final requestConfig = RequestConfig(
  //     url: Urls.getPanel,
  //     parser: (json) {
  //       // The JSON structure is: {"message": {"status": "success", "message": "..."}}
  //       // We extract the Map inside 'message'
  //       final Map<String, dynamic> data = json['message'] as Map<String, dynamic>;

  //       // Pass that map to your fromJson factory
  //       return PanelStatusModel.fromJson(data);
  //     },
  //     reqParams: {
  //       'section_name': 'Packing',
  //       // 'project_id': project,
  //       // 'unit_id': unitId,

  //       'scanned_panel_id': scannerPanelId,
  //       'file': file,
  //     },
  //     headers: {
  //       HttpHeaders.contentTypeHeader: 'application/json'
  //     },
  //   );

  //   log('.....................................$requestConfig');

  //   final response = await post(requestConfig);

  //   log('Response for Panel Status: $response');

  //   // response.process usually handles the Left/Right (Failure/Success) conversion
  //   return response.process((r) => right(r.data!));
  // }

  @override
  AsyncValueOf<PanelStatusModel> fetchLaserCuttingPanelDetails(
    String scannerPanelId,
    String? file,
    String timeOfScan
  ) async {
    // 1. Create the payload map
    final Map<String, dynamic> payload = {
      'section_name': 'Packing',
      'scanned_panel_id': scannerPanelId,
      'file': file,
       'time_of_scan':timeOfScan // The base64 string goes here
    };

    final requestConfig = RequestConfig(
      url: Urls.getPanel,
      parser: (json) {
        final Map<String, dynamic> data =
            json['message'] as Map<String, dynamic>;
        return PanelStatusModel.fromJson(data);
      },
      // 2. LEAVE reqParams EMPTY (to keep the URL clean)
      reqParams: null,
      // 3. PASS THE DATA AS A JSON STRING IN THE body FIELD
      body: jsonEncode(payload),
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    );

    log('.....................................$requestConfig');

    // 4. Execute the post
    final response = await post(requestConfig);
    log('Response for Panel Status: $response');

    return response.process((r) => right(r.data!));
  }
}
