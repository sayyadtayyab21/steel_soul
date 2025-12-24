import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:steel_soul/core/core.dart';
import 'package:steel_soul/core/cubit/network_request/network_request_cubit.dart';
import 'package:steel_soul/core/di/injector.dart';
import 'package:steel_soul/features/riveting/data/riveting_repo.dart';
import 'package:steel_soul/features/riveting/model/panel_status_model.dart';
import 'package:steel_soul/features/riveting/model/riveting_item_model.dart';


import 'package:steel_soul/features/riveting/model/riveting_model.dart';
import 'package:steel_soul/features/riveting/model/scanner_details_model.dart';

typedef LaserCuttingCubit = NetworkRequestCubit<List<RivetingModel>,None>;
typedef LaserCuttingCubitState = NetworkRequestState<List<RivetingModel>>;

typedef LaserCuttingItemsCubit = NetworkRequestCubit<List<RivetingItemModel>,String>;
typedef LaserCuttingItemsCubitState = NetworkRequestState<List<RivetingItemModel>>;



typedef LaserCuttingScanCubit = NetworkRequestCubit<List<SacnnerDetailsModel>,Pair<String,String>>;
typedef LaserCuttingScanCubitState = NetworkRequestState<List<SacnnerDetailsModel>>;




// T is PanelStatusModel
// RP is Triple<String, String, String>
typedef LaserCuttingPanelCubit = NetworkRequestCubit<PanelStatusModel, Triple<String, String, String>>;

typedef LaserCuttingPanelCubitState = NetworkRequestState<PanelStatusModel>;







@lazySingleton
class RivetingBlocProvider{
  RivetingBlocProvider(this.repository);
  final RivetingRepo repository;

  static RivetingBlocProvider get() => $sl.get<RivetingBlocProvider>();


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