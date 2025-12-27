import 'package:steel_soul/core/utils/utils.dart';
import 'package:steel_soul/features/plastic_film/model/panel_status_model.dart';
import 'package:steel_soul/features/plastic_film/model/riveting_item_model.dart';
import 'package:steel_soul/features/plastic_film/model/riveting_model.dart';
import 'package:steel_soul/features/plastic_film/model/scanner_details_model.dart';
import 'package:steel_soul/features/plastic_film/model/text_scanner_model.dart';





abstract interface class PlasticFilmRepo{
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