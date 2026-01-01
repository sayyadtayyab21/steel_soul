import 'package:steel_soul/core/utils/utils.dart';
import 'package:steel_soul/features/packing/model/packing_model.dart';
import 'package:steel_soul/features/packing/model/packing_item_model.dart';
import 'package:steel_soul/features/packing/model/panel_status_model.dart';
import 'package:steel_soul/features/packing/model/scanner_details_model.dart';
import 'package:steel_soul/features/packing/model/text_scanner_model.dart';



abstract interface class PackingRepo{
  AsyncValueOf<List<PackingModel>> fetchLaserCuttings();
   AsyncValueOf<List<PackingItemModel>> fetchLaserCuttingItemDetails(
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