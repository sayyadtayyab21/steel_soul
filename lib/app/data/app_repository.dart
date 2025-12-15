import 'package:steel_soul/app/data/app_version.dart';
import 'package:steel_soul/core/consts/urls.dart';
import 'package:steel_soul/core/model/failure.dart';
import 'package:steel_soul/core/network/base_api_repo.dart';
import 'package:steel_soul/core/network/request_config.dart';
import 'package:steel_soul/core/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppRepository extends BaseApiRepository {
  AppRepository(super.client, this.appVersion);

  final AppVersion appVersion;

  Future<Either<Failure, bool>> isAppUpdateAvailable() async {
    final requestConfig = RequestConfig(
      url: Urls.appUpdate,
      parser: (p0) => p0,
    );
    final response = await post(requestConfig, includeAuthHeader: false);

    return await response.processAsync((r) async {
  final responseData = r.data!;
  final message = responseData['message']; 

  if (message['status'] == 'error') {
    return left(Failure(error: message['message'] ?? 'Unknown error'));
  }

  final serverVersion = message['version_no'] ?? '';
  final appVersionStr = await appVersion.getAppVersion();
  bool updateRequired = isUpdateRequired(appVersionStr, serverVersion);
  return right(updateRequired);
});

  }
}
bool isUpdateRequired(String appVersion, String serverVersion) {
  List<int> appParts = appVersion.split('.').map(int.parse).toList();
  List<int> serverParts = serverVersion.split('.').map(int.parse).toList();

  for (int i = 0; i < serverParts.length; i++) {
    int app = (i < appParts.length) ? appParts[i] : 0;
    int server = serverParts[i];

    if (app < server) return true; 
    if (app > server) return false; 
  }
  return false; 
}