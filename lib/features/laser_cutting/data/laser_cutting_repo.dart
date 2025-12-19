import 'package:steel_soul/core/utils/utils.dart';
import 'package:steel_soul/features/laser_cutting/model/laser_cutting_model.dart';

abstract interface class LaserCuttingRepo{
  AsyncValueOf<List<LaserCuttingList>> fetchLaserCuttings();
}