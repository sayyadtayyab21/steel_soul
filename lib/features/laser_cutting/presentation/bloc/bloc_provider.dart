import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:steel_soul/core/core.dart';
import 'package:steel_soul/core/cubit/network_request/network_request_cubit.dart';
import 'package:steel_soul/core/di/injector.dart';
import 'package:steel_soul/features/laser_cutting/data/laser_cutting_repo.dart';

import 'package:steel_soul/features/laser_cutting/model/laser_cutting_model.dart';
import 'package:steel_soul/features/laser_cutting/model/laser_item_model.dart';
import 'package:steel_soul/features/laser_cutting/model/panel_status_model.dart';
import 'package:steel_soul/features/laser_cutting/model/scanner_details_model.dart';

typedef LaserCuttingCubit = NetworkRequestCubit<List<LaserCuttingList>,None>;
typedef LaserCuttingCubitState = NetworkRequestState<List<LaserCuttingList>>;

typedef LaserCuttingItemsCubit = NetworkRequestCubit<List<LaserItemModel>,String>;
typedef LaserCuttingItemsCubitState = NetworkRequestState<List<LaserItemModel>>;



typedef LaserCuttingScanCubit = NetworkRequestCubit<List<SacnnerDetailsModel>,Pair<String,String>>;
typedef LaserCuttingScanCubitState = NetworkRequestState<List<SacnnerDetailsModel>>;




// T is PanelStatusModel
// RP is Triple<String, String, String>
// Corrected typedefs
typedef LaserCuttingPanelCubit = NetworkRequestCubit<PanelStatusModel, String>;
typedef LaserCuttingPanelCubitState = NetworkRequestState<PanelStatusModel>;







@lazySingleton
class LaserCuttingBlocProvider{
  LaserCuttingBlocProvider(this.repository);
  final LaserCuttingRepo repository;

  static LaserCuttingBlocProvider get() => $sl.get<LaserCuttingBlocProvider>();


  LaserCuttingCubit fetchLaserList() => LaserCuttingCubit(
    onRequest: (_, state) => repository.fetchLaserCuttings(),
    );


    LaserCuttingItemsCubit fetchLaserItemsList() => LaserCuttingItemsCubit(
    onRequest: (params, state) => repository.fetchLaserCuttingItemDetails(params!),
    );



     LaserCuttingScanCubit fetchLaserScanList() => LaserCuttingScanCubit(
    onRequest: (params, state) => repository.fetchLaserCuttingScanDetails(params!.first,params.second),
    );


     LaserCuttingPanelCubit fetchLaserPanelStatus() => LaserCuttingPanelCubit(
    onRequest: (params, state) => repository.fetchLaserCuttingPanelDetails(params!),
    );

    
}