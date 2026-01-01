import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:steel_soul/core/consts/urls.dart';
import 'package:steel_soul/core/core.dart';
import 'package:steel_soul/core/logger/app_logger.dart';
import 'package:steel_soul/core/network/network.dart';
import 'package:steel_soul/core/utils/typedefs.dart';

import 'package:steel_soul/features/riveting/data/riveting_repo.dart';
import 'package:steel_soul/features/riveting/model/panel_status_model.dart';
import 'package:steel_soul/features/riveting/model/riveting_item_model.dart';
import 'package:steel_soul/features/riveting/model/riveting_model.dart';
import 'package:steel_soul/features/riveting/model/scanner_details_model.dart';
import 'package:steel_soul/features/riveting/model/text_scanner_model.dart';

@LazySingleton(as: RivetingRepo)
class RivetingRepoImp extends BaseApiRepository implements RivetingRepo{
  const RivetingRepoImp(super.client);


  @override
  AsyncValueOf<List<RivetingModel>> fetchProjectList() async{
   final requestConfig = RequestConfig(
    url: Urls.projectList , 
    parser: (json){
    print(json);
    final data = json['message'];
    final listdata = data as List<dynamic>;
          return listdata.map((e) => RivetingModel.fromJson(e)).toList();
    },
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json'
    },
  reqParams: {
      'section_name':'Riveting',
  
      },
    );
    $logger.devLog('Riveting requesting...:$requestConfig');
    final response = await post(requestConfig);
    print(response);
    return response.process((r)=> right(r.data!));

  }


   @override
  AsyncValueOf<List<RivetingItemModel>> fetchLaserCuttingItemDetails(
    String project
  ) async{
   final requestConfig = RequestConfig(
    url: Urls.getUnits , 
    parser: (json){
    print(json);
    final data = json['message'];
    final listdata = data as List<dynamic>;
          return listdata.map((e) => RivetingItemModel.fromJson(e)).toList();
    },
     reqParams: {
      'section_name':'Riveting',
        'project': project,
      },
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json'
    },
    
   
    );
    $logger.devLog('Riveting item details requesting...:$requestConfig');
    final response = await post(requestConfig);
    print(response);
    return response.process((r)=> right(r.data!));

  }
  @override
AsyncValueOf<TextScannerModel> textScannerUpload(String base64DataUri,String captureTime)async {
  // Encode the data as JSON body instead of reqParams
  final bodyData = jsonEncode({
    'files': [
      {
        'filedata': base64DataUri,
        'time_of_scan':captureTime
      }
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
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
    },
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
    String project,String unit
  ) async{
   final requestConfig = RequestConfig(
    url: Urls.getPanleList , 
    parser: (json){
    print(json);
    final data = json['message'];
    final listdata = data as List<dynamic>;
          return listdata.map((e) => SacnnerDetailsModel.fromJson(e)).toList();
    },
     reqParams: {
      'section_name':'Riveting',
        'project': project,
         'unit': unit,

      },
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json'
    },
    
   
    );
    $logger.devLog('Riveting scan details requesting...:$requestConfig');
    final response = await post(requestConfig);
    print(response);
    return response.process((r)=> right(r.data!));

  }



@override
AsyncValueOf<PanelStatusModel> fetchLaserCuttingPanelDetails(
  String scannerPanelId,
  String? file,
  String timeOfScan
) async {
  // 1. Create the payload map
  final Map<String, dynamic> payload = {
    'section_name': 'Riveting',
    'scanned_panel_id': scannerPanelId,
    'file': file,
    'time_of_scan':timeOfScan
  };

  final requestConfig = RequestConfig(
    url: Urls.getPanel,
    parser: (json) {
      final Map<String, dynamic> data = json['message'] as Map<String, dynamic>;
      return PanelStatusModel.fromJson(data);
    },
    // 2. LEAVE reqParams EMPTY (to keep the URL clean)
    reqParams: null, 
    // 3. PASS THE DATA AS A JSON STRING IN THE body FIELD
    body: jsonEncode(payload), 
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
    },
  );

  log('.....................................$requestConfig');

  // 4. Execute the post
  final response = await post(requestConfig);
  log('Response for Panel Status: $response');
  
  return response.process((r) => right(r.data!));
}
  
}
