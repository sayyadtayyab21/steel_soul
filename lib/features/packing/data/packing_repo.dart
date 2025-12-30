import 'package:steel_soul/core/utils/utils.dart';
import 'package:steel_soul/features/packing/model/laser_cutting_model.dart';
import 'package:steel_soul/features/packing/model/laser_item_model.dart';
import 'package:steel_soul/features/packing/model/panel_status_model.dart';
import 'package:steel_soul/features/packing/model/scanner_details_model.dart';
import 'package:steel_soul/features/packing/model/text_scanner_model.dart';



abstract interface class PackingRepo{
  AsyncValueOf<List<LaserCuttingList>> fetchLaserCuttings();
   AsyncValueOf<List<LaserItemModel>> fetchLaserCuttingItemDetails(
    String project
  );
  AsyncValueOf<TextScannerModel> textScannerUpload(String base64DataUri);


  AsyncValueOf<List<SacnnerDetailsModel>> fetchLaserCuttingScanDetails(
    String project,String unit
  );

AsyncValueOf<PanelStatusModel> fetchLaserCuttingPanelDetails(
  String scannerPanelId,
  String? file
  );
}