import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:steel_soul/core/core.dart';

import 'package:steel_soul/features/puf/data/puf_repo.dart';
import 'package:steel_soul/features/puf/model/panel_status_model.dart';
import 'package:steel_soul/features/puf/model/project_details_model.dart';
import 'package:steel_soul/features/puf/model/puf_item_model.dart';

import 'package:steel_soul/features/puf/model/scanner_details_model.dart';
import 'package:steel_soul/features/puf/model/text_scanner_model.dart';


@LazySingleton(as: PufRepo)
class PufRepoImp extends BaseApiRepository implements PufRepo{
  const PufRepoImp(super.client);


  @override
  AsyncValueOf<List<ProjectDetailsModel>> fetchProjectList() async{
   final requestConfig = RequestConfig(
    url: Urls.projectList , 
    parser: (json){
    print(json);
    final data = json['message'];
    final listdata = data as List<dynamic>;
          return listdata.map((e) => ProjectDetailsModel.fromJson(e)).toList();
    },
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json'
    },
  reqParams: {
      'section_name':'PUF',
  
      },
    );
    $logger.devLog('PUF project list requesting...:$requestConfig');
    final response = await post(requestConfig);
    print(response);
    log('PUF project list response: $response');
    return response.process((r)=> right(r.data!));

  }


   @override
  AsyncValueOf<List<PufItemModel>> fetchLaserCuttingItemDetails(
    String project
  ) async{
   final requestConfig = RequestConfig(
    url: Urls.getUnits , 
    parser: (json){
    print(json);
    final data = json['message'];
    final listdata = data as List<dynamic>;
          return listdata.map((e) => PufItemModel.fromJson(e)).toList();
    },
     reqParams: {
      'section_name':'PUF',
        'project': project,
      },
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json'
    },
    
   
    );
    $logger.devLog('PUF item details requesting...:$requestConfig');
    final response = await post(requestConfig);
    print(response);
    log('PUF item details response: $response');
    return response.process((r)=> right(r.data!));

  }
  @override
AsyncValueOf<TextScannerModel> textScannerUpload(String base64DataUri,String  captureTime)async {
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
  log('textScannerUpload puf : $requestConfig');

  final response = await post(requestConfig);
  log(' puf textScannerUpload response: $response');
  return response.process((r) => right(r.data!));
}




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
      'section_name':'PUF',
        'project': project,
         'unit': unit,

      },
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json'
    },
    
   
    );
    $logger.devLog('puf scan details requesting...:$requestConfig');
    final response = await post(requestConfig);
    log(  ' Puf scan Detailsresponse: $response');
    print(response);
    return response.process((r)=> right(r.data!));

  }



@override
AsyncValueOf<PanelStatusModel> fetchLaserCuttingPanelDetails(
  List<String> scannerPanelId,
  String? file,
  String timeOfScan
) async {
  // 1. Create the payload map
  final Map<String, dynamic> payload = {
    'section_name': 'PUF',
    'scanned_panel_id': scannerPanelId,
    'file': file, 
     'time_of_scan': timeOfScan, 
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

  log('requestConfig for Panel Status: $requestConfig');

  // 4. Execute the post
  final response = await post(requestConfig);
  log('Response for Panel Status: $response');
  
  return response.process((r) => right(r.data!));
}
  
}
