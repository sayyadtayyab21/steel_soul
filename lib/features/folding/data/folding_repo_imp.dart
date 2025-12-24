import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:steel_soul/core/core.dart';
import 'package:steel_soul/features/folding/data/folding_repo.dart';
import 'package:steel_soul/features/folding/model/panel_status_model.dart';
import 'package:steel_soul/features/folding/model/riveting_item_model.dart';
import 'package:steel_soul/features/folding/model/riveting_model.dart';
import 'package:steel_soul/features/folding/model/scanner_details_model.dart';
import 'package:steel_soul/features/folding/model/text_scanner_model.dart';


@LazySingleton(as: FoldingRepo)
class FoldingRepoImp extends BaseApiRepository implements FoldingRepo{
  const FoldingRepoImp(super.client);


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
      'section_name':'Folding',
  
      },
    );
    $logger.devLog('Folding requesting...:$requestConfig');
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
      'section_name':'Folding',
        'project': project,
      },
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json'
    },
    
   
    );
    $logger.devLog('Folding item details requesting...:$requestConfig');
    final response = await post(requestConfig);
    print(response);
    return response.process((r)=> right(r.data!));

  }
  @override
AsyncValueOf<TextScannerModel> textScannerUpload(String base64DataUri) async {
  // Encode the data as JSON body instead of reqParams
  final bodyData = jsonEncode({
    'files': [
      {
        'filedata': base64DataUri,
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
      'section_name':'Folding',
        'project': project,
         'unit': unit,

      },
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json'
    },
    
   
    );
    $logger.devLog('puf scan details requesting...:$requestConfig');
    final response = await post(requestConfig);
    print(response);
    return response.process((r)=> right(r.data!));

  }



@override
AsyncValueOf<PanelStatusModel> fetchLaserCuttingPanelDetails(
  String project, String unitId, String scannerPanelId
) async {
  final requestConfig = RequestConfig(
    url: Urls.getPanel,
    parser: (json) {
      // The JSON structure is: {"message": {"status": "success", "message": "..."}}
      // We extract the Map inside 'message'
      final Map<String, dynamic> data = json['message'] as Map<String, dynamic>;
      
      // Pass that map to your fromJson factory
      return PanelStatusModel.fromJson(data);
    },
    reqParams: {
      'section_name': 'Folding',
      'project_id': project,
      'unit_id': unitId,
      'scanned_panel_id': scannerPanelId,
    },
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json'
    },
  );


  log('.....................................$requestConfig');

  $logger.devLog('Folding scan details requesting...: $requestConfig');
  
  final response = await post(requestConfig);
  
  // response.process usually handles the Left/Right (Failure/Success) conversion
  return response.process((r) => right(r.data!));
}
  
}
