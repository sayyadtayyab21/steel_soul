import 'package:steel_soul/core/utils/utils.dart';
import 'package:steel_soul/features/powder_coating/model/panel_status_model.dart';
import 'package:steel_soul/features/powder_coating/model/riveting_item_model.dart';
import 'package:steel_soul/features/powder_coating/model/riveting_model.dart';
import 'package:steel_soul/features/powder_coating/model/scanner_details_model.dart';
import 'package:steel_soul/features/powder_coating/model/text_scanner_model.dart';


abstract interface class PowderCoatingRepo{
  AsyncValueOf<List<RivetingModel>> fetchProjectList();
   AsyncValueOf<List<RivetingItemModel>> fetchLaserCuttingItemDetails(
    String project
  );
  AsyncValueOf<TextScannerModel> textScannerUpload(String base64DataUri);


  AsyncValueOf<List<SacnnerDetailsModel>> fetchLaserCuttingScanDetails(
    String project,String unit
  );

AsyncValueOf<PanelStatusModel> fetchLaserCuttingPanelDetails(
    String project,String unitId,String scannerPanelId
  );
}