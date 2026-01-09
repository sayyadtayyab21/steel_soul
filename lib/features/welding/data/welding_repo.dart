import 'package:steel_soul/core/utils/utils.dart';
import 'package:steel_soul/features/welding/model/welding_projects_model.dart';
import 'package:steel_soul/features/welding/model/welding_units_model.dart';
import 'package:steel_soul/features/welding/model/panel_status_model.dart';
import 'package:steel_soul/features/welding/model/scanner_details_model.dart';
import 'package:steel_soul/features/welding/model/text_scanner_model.dart';
import 'package:steel_soul/features/welding/model/update_sheet_model.dart';



abstract interface class WeldingRepo{
  AsyncValueOf<List<WeldingProjectsModel>> fetchLaserCuttings();
   AsyncValueOf<List<WeldingUnitsModel>> fetchLaserCuttingItemDetails(
    String project
  );
  AsyncValueOf<TextScannerModel> textScannerUpload(String base64DataUri,String capturedImage);


  AsyncValueOf<List<SacnnerDetailsModel>> fetchLaserCuttingScanDetails(
    String project,String unit
  );

AsyncValueOf<PanelStatusModel> fetchLaserCuttingPanelDetails(
  String scannerPanelId,
  String? file,
  String? timeOfScan,
  );



  AsyncValueOf<UpdateSheetModel> updateSheetCount(
    String projectId,
    int fullSheetCount,
    int halfSheetCount,
    int quarterSheetCount,
  );


}