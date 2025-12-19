import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:steel_soul/core/cubit/network_request/network_request_cubit.dart';
import 'package:steel_soul/core/di/injector.dart';
import 'package:steel_soul/features/laser_cutting/data/laser_cutting_repo.dart';
import 'package:steel_soul/features/laser_cutting/model/laser_cutting_model.dart';

typedef LaserCuttingCubit = NetworkRequestCubit<List<LaserCuttingList>,None>;
typedef LaserCuttingCubitState = NetworkRequestState<List<LaserCuttingList>>;

@lazySingleton
class LaserCuttingBlocProvider{
  LaserCuttingBlocProvider(this.repository);
  final LaserCuttingRepo repository;
  static LaserCuttingBlocProvider get() => $sl.get<LaserCuttingBlocProvider>();


  LaserCuttingCubit fetchLaserList() => LaserCuttingCubit(
    onRequest: (_, state) => repository.fetchLaserCuttings(),
    );
}