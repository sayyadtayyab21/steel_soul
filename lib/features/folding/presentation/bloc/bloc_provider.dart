import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:steel_soul/core/core.dart';

import 'package:steel_soul/features/folding/data/folding_repo.dart';
import 'package:steel_soul/features/folding/model/folding_item_model.dart';
import 'package:steel_soul/features/folding/model/panel_status_model.dart';

import 'package:steel_soul/features/folding/model/project_details_model.dart';
import 'package:steel_soul/features/folding/model/scanner_details_model.dart';



typedef LaserCuttingCubit = NetworkRequestCubit<List<ProjectDetailsModel>,None>;
typedef LaserCuttingCubitState = NetworkRequestState<List<ProjectDetailsModel>>;

typedef LaserCuttingItemsCubit = NetworkRequestCubit<List<FoldingItemModel>,String>;
typedef LaserCuttingItemsCubitState = NetworkRequestState<List<FoldingItemModel>>;



typedef LaserCuttingScanCubit = NetworkRequestCubit<List<SacnnerDetailsModel>,Pair<String,String>>;
typedef LaserCuttingScanCubitState = NetworkRequestState<List<SacnnerDetailsModel>>;




// T is PanelStatusModel
// RP is Triple<String, String, String>
typedef LaserCuttingPanelCubit = NetworkRequestCubit<PanelStatusModel, Triple<String, String?,String?>>;
typedef LaserCuttingPanelCubitState = NetworkRequestState<PanelStatusModel>;







@lazySingleton
class FoldingBlocProvider{
  FoldingBlocProvider(this.repository);
  final FoldingRepo repository;

  static FoldingBlocProvider get() => $sl.get<FoldingBlocProvider>();


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
    onRequest: (params, state) => repository.fetchLaserCuttingPanelDetails(params!.first, params.second,params.third),
    );

    
}