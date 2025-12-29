import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:steel_soul/core/core.dart';

import 'package:steel_soul/features/powder_coating/data/powder_coating_repo.dart';
import 'package:steel_soul/features/powder_coating/model/panel_status_model.dart';
import 'package:steel_soul/features/powder_coating/model/powder_coating_item_model.dart';
import 'package:steel_soul/features/powder_coating/model/project_details_model.dart';

import 'package:steel_soul/features/powder_coating/model/scanner_details_model.dart';



typedef LaserCuttingCubit = NetworkRequestCubit<List<ProjectDetailsModel>,None>;
typedef LaserCuttingCubitState = NetworkRequestState<List<ProjectDetailsModel>>;

typedef LaserCuttingItemsCubit = NetworkRequestCubit<List<PowderCoatingItemModel>,String>;
typedef LaserCuttingItemsCubitState = NetworkRequestState<List<PowderCoatingItemModel>>;



typedef LaserCuttingScanCubit = NetworkRequestCubit<List<SacnnerDetailsModel>,Pair<String,String>>;
typedef LaserCuttingScanCubitState = NetworkRequestState<List<SacnnerDetailsModel>>;




// T is PanelStatusModel
// RP is Triple<String, String, String>
typedef LaserCuttingPanelCubit = NetworkRequestCubit<PanelStatusModel, Pair< String, String>>;

typedef LaserCuttingPanelCubitState = NetworkRequestState<PanelStatusModel>;







@lazySingleton
class PowderCoatingBlocProvider{
  PowderCoatingBlocProvider(this.repository);
  final PowderCoatingRepo repository;

  static PowderCoatingBlocProvider get() => $sl.get<PowderCoatingBlocProvider>();


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
    onRequest: (params, state) => repository.fetchLaserCuttingPanelDetails(params!.first,params.second),
    );

    
}