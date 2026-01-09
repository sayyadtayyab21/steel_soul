import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:steel_soul/core/core.dart';
import 'package:steel_soul/core/model/quad.dart';
import 'package:steel_soul/features/welding/data/welding_repo.dart';
import 'package:steel_soul/features/welding/model/welding_projects_model.dart';
import 'package:steel_soul/features/welding/model/welding_units_model.dart';
import 'package:steel_soul/features/welding/model/panel_status_model.dart';
import 'package:steel_soul/features/welding/model/scanner_details_model.dart';
import 'package:steel_soul/features/welding/model/update_sheet_model.dart';


typedef LaserCuttingCubit = NetworkRequestCubit<List<WeldingProjectsModel>,None>;
typedef LaserCuttingCubitState = NetworkRequestState<List<WeldingProjectsModel>>;

typedef LaserCuttingItemsCubit = NetworkRequestCubit<List<WeldingUnitsModel>,String>;
typedef LaserCuttingItemsCubitState = NetworkRequestState<List<WeldingUnitsModel>>;



typedef LaserCuttingScanCubit = NetworkRequestCubit<List<SacnnerDetailsModel>,Pair<String,String>>;
typedef LaserCuttingScanCubitState = NetworkRequestState<List<SacnnerDetailsModel>>;




// T is PanelStatusModel
// RP is Triple<String, String, String>
// Corrected typedefs
typedef LaserCuttingPanelCubit = NetworkRequestCubit<PanelStatusModel, Triple<String, String?,String?>>;
typedef LaserCuttingPanelCubitState = NetworkRequestState<PanelStatusModel>;


typedef LaserCuttiingUpdateSheetCubit = NetworkRequestCubit<UpdateSheetModel, Quad<String, int,int,int>>;
typedef LaserCuttiingUpdateSheetCubitState = NetworkRequestState<UpdateSheetModel>;








@lazySingleton
class WeldingBlocProvider{
  WeldingBlocProvider(this.repository);
  final WeldingRepo repository;

  static WeldingBlocProvider get() => $sl.get<WeldingBlocProvider>();


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
    onRequest: (params, state) => repository.fetchLaserCuttingPanelDetails(params!.first, params.second,params.third),
    );



     LaserCuttiingUpdateSheetCubit fetchLaserUpdateSheetStatus() => LaserCuttiingUpdateSheetCubit(
    onRequest: (params, state) => repository.updateSheetCount(params!.first, params.second,params.third,params.fourth),
    );


    
}