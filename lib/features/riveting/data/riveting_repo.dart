import 'package:steel_soul/core/utils/utils.dart';
import 'package:steel_soul/features/riveting/model/panel_status_model.dart';


import 'package:steel_soul/features/riveting/model/riveting_item_model.dart';
import 'package:steel_soul/features/riveting/model/riveting_model.dart';
import 'package:steel_soul/features/riveting/model/scanner_details_model.dart';
import 'package:steel_soul/features/riveting/model/text_scanner_model.dart';

abstract interface class RivetingRepo{
  AsyncValueOf<List<RivetingModel>> fetchProjectList();
   AsyncValueOf<List<RivetingItemModel>> fetchLaserCuttingItemDetails(
    String project
  );
  AsyncValueOf<TextScannerModel> textScannerUpload(String base64DataUri,String captureTime);


  AsyncValueOf<List<SacnnerDetailsModel>> fetchLaserCuttingScanDetails(
    String project,String unit
  );
AsyncValueOf<PanelStatusModel> fetchLaserCuttingPanelDetails(
  String scannerPanelId,
  String? file,
  String timeOfScan
);
}