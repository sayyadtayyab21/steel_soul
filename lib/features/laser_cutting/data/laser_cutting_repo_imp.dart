import 'dart:convert';
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
    body: jsonEncode({
    'section_name':'Laser Cutting'
})
    );
    $logger.devLog('laser cutting requesting...:$requestConfig');
    final response = await post(requestConfig);
    print(response);
    return response.process((r)=> right(r.data!));

  }
  
}