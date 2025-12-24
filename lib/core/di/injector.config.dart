// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;
import 'package:package_info_plus/package_info_plus.dart' as _i655;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../app/data/app_repository.dart' as _i691;
import '../../app/data/app_version.dart' as _i346;
import '../../app/presentation/app_update_blocprovider.dart' as _i266;
import '../../features/auth/data/auth_repo.dart' as _i585;
import '../../features/auth/data/auth_repo_impl.dart' as _i328;
import '../../features/auth/presentation/bloc/auth/auth_cubit.dart' as _i190;
import '../../features/auth/presentation/bloc/sign_in/sign_in_cubit.dart'
    as _i140;
import '../../features/folding/data/folding_repo.dart' as _i372;
import '../../features/folding/data/folding_repo_imp.dart' as _i972;
import '../../features/folding/presentation/bloc/bloc_provider.dart' as _i39;
import '../../features/folding/presentation/bloc/scanner_cubit.dart' as _i482;
import '../../features/laser_cutting/data/laser_cutting_repo.dart' as _i137;
import '../../features/laser_cutting/data/laser_cutting_repo_imp.dart' as _i147;
import '../../features/laser_cutting/presentation/bloc/bloc_provider.dart'
    as _i158;
import '../../features/laser_cutting/presentation/bloc/scanner_cubit.dart'
    as _i955;
import '../../features/powder_coating/data/powder_coating_repo.dart' as _i626;
import '../../features/powder_coating/data/powder_coating_repo_imp.dart'
    as _i1070;
import '../../features/powder_coating/presentation/bloc/bloc_provider.dart'
    as _i66;
import '../../features/powder_coating/presentation/bloc/scanner_cubit.dart'
    as _i818;
import '../../features/puf/data/puf_repo.dart' as _i638;
import '../../features/puf/data/puf_repo_imp.dart' as _i604;
import '../../features/puf/presentation/bloc/bloc_provider.dart' as _i166;
import '../../features/puf/presentation/bloc/scanner_cubit.dart' as _i40;
import '../../features/riveting/data/riveting_repo.dart' as _i603;
import '../../features/riveting/data/riveting_repo_imp.dart' as _i158;
import '../../features/riveting/presentation%20/bloc/bloc_provider.dart'
    as _i1032;
import '../../features/riveting/presentation%20/bloc/scanner_cubit.dart'
    as _i467;
import '../core.dart' as _i351;
import '../local_storage/key_vale_storage.dart' as _i1012;
import '../network/api_client.dart' as _i557;
import '../network/internet_check.dart' as _i402;
import 'injector.dart' as _i811;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final thirdPartyDependencies = _$ThirdPartyDependencies();
    gh.factory<DateTime>(() => thirdPartyDependencies.defaultDateTime);
    gh.singleton<_i519.Client>(() => thirdPartyDependencies.httpClient);
    gh.singleton<_i895.Connectivity>(() => thirdPartyDependencies.connectivity);
    gh.singleton<_i558.FlutterSecureStorage>(
      () => thirdPartyDependencies.secureStorage,
    );
    await gh.singletonAsync<_i655.PackageInfo>(
      () => thirdPartyDependencies.packageInfo,
      preResolve: true,
    );
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => thirdPartyDependencies.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i402.InternetConnectionChecker>(
      () => _i402.InternetConnectionChecker(gh<_i895.Connectivity>()),
    );
    gh.factory<_i1012.KeyValueStorage>(
      () => _i1012.KeyValueStorage(
        gh<_i558.FlutterSecureStorage>(),
        gh<_i460.SharedPreferences>(),
      ),
    );
    gh.lazySingleton<_i346.AppVersion>(
      () => _i346.AppVersion(gh<_i655.PackageInfo>()),
    );
    gh.factory<_i557.ApiClient>(
      () => _i557.ApiClient(
        gh<_i519.Client>(),
        gh<_i402.InternetConnectionChecker>(),
      ),
    );
    gh.lazySingleton<_i585.AuthRepo>(
      () => _i328.AuthRepoImpl(
        gh<_i351.ApiClient>(),
        gh<_i351.KeyValueStorage>(),
      ),
    );
    gh.lazySingleton<_i638.PufRepo>(
      () => _i604.PufRepoImp(gh<_i351.ApiClient>()),
    );
    gh.lazySingleton<_i626.PowderCoatingRepo>(
      () => _i1070.PowderCoatingRepoImp(gh<_i351.ApiClient>()),
    );
    gh.factory<_i40.ScannerCubit>(() => _i40.ScannerCubit(gh<_i638.PufRepo>()));
    gh.lazySingleton<_i137.LaserCuttingRepo>(
      () => _i147.LaserCuttingRepoImp(gh<_i351.ApiClient>()),
    );
    gh.lazySingleton<_i691.AppRepository>(
      () => _i691.AppRepository(gh<_i351.ApiClient>(), gh<_i346.AppVersion>()),
    );
    gh.lazySingleton<_i603.RivetingRepo>(
      () => _i158.RivetingRepoImp(gh<_i351.ApiClient>()),
    );
    gh.lazySingleton<_i166.PufBlocProvider>(
      () => _i166.PufBlocProvider(gh<_i638.PufRepo>()),
    );
    gh.lazySingleton<_i266.AppUpdateBlocprovider>(
      () => _i266.AppUpdateBlocprovider(gh<_i691.AppRepository>()),
    );
    gh.lazySingleton<_i372.FoldingRepo>(
      () => _i972.FoldingRepoImp(gh<_i351.ApiClient>()),
    );
    gh.factory<_i818.ScannerCubit>(
      () => _i818.ScannerCubit(gh<_i626.PowderCoatingRepo>()),
    );
    gh.factory<_i467.ScannerCubit>(
      () => _i467.ScannerCubit(gh<_i603.RivetingRepo>()),
    );
    gh.factory<_i140.SignInCubit>(
      () => _i140.SignInCubit(gh<_i585.AuthRepo>()),
    );
    gh.factory<_i190.AuthCubit>(() => _i190.AuthCubit(gh<_i585.AuthRepo>()));
    gh.lazySingleton<_i158.LaserCuttingBlocProvider>(
      () => _i158.LaserCuttingBlocProvider(gh<_i137.LaserCuttingRepo>()),
    );
    gh.lazySingleton<_i1032.RivetingBlocProvider>(
      () => _i1032.RivetingBlocProvider(gh<_i603.RivetingRepo>()),
    );
    gh.lazySingleton<_i66.PowderCoatingBlocProvider>(
      () => _i66.PowderCoatingBlocProvider(gh<_i626.PowderCoatingRepo>()),
    );
    gh.factory<_i955.ScannerCubit>(
      () => _i955.ScannerCubit(gh<_i137.LaserCuttingRepo>()),
    );
    gh.factory<_i482.ScannerCubit>(
      () => _i482.ScannerCubit(gh<_i372.FoldingRepo>()),
    );
    gh.lazySingleton<_i39.FoldingBlocProvider>(
      () => _i39.FoldingBlocProvider(gh<_i372.FoldingRepo>()),
    );
    return this;
  }
}

class _$ThirdPartyDependencies extends _i811.ThirdPartyDependencies {}
