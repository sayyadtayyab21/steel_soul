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
import 'package:steel_soul/features/laser_cutting/data/laser_cutting_repo.dart';

import 'package:steel_soul/features/laser_cutting/model/laser_cutting_model.dart';
import 'package:steel_soul/features/laser_cutting/model/laser_item_model.dart';
import 'package:steel_soul/features/laser_cutting/model/scanner_details_model.dart';
import 'package:steel_soul/features/laser_cutting/model/text_scanner_model.dart';

@LazySingleton(as: LaserCuttingRepo)
class LaserCuttingRepoImp extends BaseApiRepository implements LaserCuttingRepo{
  const LaserCuttingRepoImp(super.client);
  @override
  AsyncValueOf<List<LaserCuttingList>> fetchLaserCuttings() async{
   final requestConfig = RequestConfig(
    url: Urls.projectList , 
    parser: (json){
    print(json);
    final data = json['message'];
    final listdata = data as List<dynamic>;
          return listdata.map((e) => LaserCuttingList.fromJson(e)).toList();
    },
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json'
    },
  reqParams: {
      'section_name':'Laser Cutting',
  
      },
    );
    $logger.devLog('laser cutting requesting...:$requestConfig');
    final response = await post(requestConfig);
    print(response);
    return response.process((r)=> right(r.data!));

  }


   @override
  AsyncValueOf<List<LaserItemModel>> fetchLaserCuttingItemDetails(
    String project
  ) async{
   final requestConfig = RequestConfig(
    url: Urls.getUnits , 
    parser: (json){
    print(json);
    final data = json['message'];
    final listdata = data as List<dynamic>;
          return listdata.map((e) => LaserItemModel.fromJson(e)).toList();
    },
     reqParams: {
      'section_name':'Laser Cutting',
        'project': project,
      },
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json'
    },
    
   
    );
    $logger.devLog('laser cutting item details requesting...:$requestConfig');
    final response = await post(requestConfig);
    print(response);
    return response.process((r)=> right(r.data!));

  }
  @override
AsyncValueOf<TextScannerModel> textScannerUpload(String base64DataUri) async {
  final requestConfig = RequestConfig(
    url: Urls.scannerCubit,
    parser: (json) {
      // Access the 'message' object as per your successful Postman response
      final data = json['message'] as Map<String, dynamic>;
      return TextScannerModel.fromJson(data);
    },
    // Pass the structure as a Map/List. Do NOT use jsonEncode here.
    reqParams: {
      'files': [
        {
          'filedata': base64DataUri,

        }
      ],
    },
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      // Ensure your token is included

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
      'section_name':'Laser Cutting',
        'project': project,
         'unit': unit,

      },
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json'
    },
    
   
    );
    $logger.devLog('laser cutting scan details requesting...:$requestConfig');
    final response = await post(requestConfig);
    print(response);
    return response.process((r)=> right(r.data!));

  }
  
}
