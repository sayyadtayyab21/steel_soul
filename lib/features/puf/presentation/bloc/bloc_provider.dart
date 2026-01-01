import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:steel_soul/core/core.dart';
import 'package:steel_soul/core/cubit/network_request/network_request_cubit.dart';
import 'package:steel_soul/core/di/injector.dart';
import 'package:steel_soul/features/puf/data/puf_repo.dart';
import 'package:steel_soul/features/puf/model/panel_status_model.dart';
import 'package:steel_soul/features/puf/model/project_details_model.dart';
import 'package:steel_soul/features/puf/model/puf_item_model.dart';

import 'package:steel_soul/features/puf/model/scanner_details_model.dart';


typedef LaserCuttingCubit = NetworkRequestCubit<List<ProjectDetailsModel>,None>;
typedef LaserCuttingCubitState = NetworkRequestState<List<ProjectDetailsModel>>;

typedef LaserCuttingItemsCubit = NetworkRequestCubit<List<PufItemModel>,String>;
typedef LaserCuttingItemsCubitState = NetworkRequestState<List<PufItemModel>>;



typedef LaserCuttingScanCubit = NetworkRequestCubit<List<SacnnerDetailsModel>,Pair<String,String>>;
typedef LaserCuttingScanCubitState = NetworkRequestState<List<SacnnerDetailsModel>>;




// T is PanelStatusModel
// RP is Triple<String, String, String>
typedef LaserCuttingPanelCubit = NetworkRequestCubit<PanelStatusModel, Triple<String, String, String>>;

typedef LaserCuttingPanelCubitState = NetworkRequestState<PanelStatusModel>;







@lazySingleton
class PufBlocProvider{
  PufBlocProvider(this.repository);
  final PufRepo repository;

  static PufBlocProvider get() => $sl.get<PufBlocProvider>();


  LaserCuttingCubit fetchLaserList() => LaserCuttingCubit(
    onRequest: (_, state) => repository.fetchProjectList(),
    );


    LaserCuttingItemsCubit fetchLaserItemsList() => LaserCuttingItemsCubit(
    onRequest: (params, state) => repository.fetchLaserCuttingItemDetails(params!),
    );



     LaserCuttingScanCubit fetchLaserScanList() => LaserCuttingScanCubit(
    onRequest: (params, state) => repository.fetchLaserCuttingScanDetails(params!.first,params.second),
    );


     LaserCuttingPanelCubit fetchLaserPanelStatus() => LaserCuttingPanelCubit(
    onRequest: (params, state) => repository.fetchLaserCuttingPanelDetails(params!.first,params.second,params.third),
    );

    
}