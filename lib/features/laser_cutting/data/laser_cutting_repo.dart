import 'package:steel_soul/core/utils/utils.dart';

import 'package:steel_soul/features/laser_cutting/model/laser_cutting_model.dart';
import 'package:steel_soul/features/laser_cutting/model/laser_item_model.dart';
import 'package:steel_soul/features/laser_cutting/model/scanner_details_model.dart';
import 'package:steel_soul/features/laser_cutting/model/text_scanner_model.dart';

abstract interface class LaserCuttingRepo{
  AsyncValueOf<List<LaserCuttingList>> fetchLaserCuttings();
   AsyncValueOf<List<LaserItemModel>> fetchLaserCuttingItemDetails(
    String project
  );
  AsyncValueOf<TextScannerModel> textScannerUpload(String base64DataUri);


  AsyncValueOf<List<SacnnerDetailsModel>> fetchLaserCuttingScanDetails(
    String project,String unit
  );
}