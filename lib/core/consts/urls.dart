import 'package:steel_soul/core/di/injector.dart';

final _reqisteredUrl = $sl.get<Urls>(instanceName: 'baseUrl');

class Urls {
  factory Urls.uat() => const Urls('https://steelsouluat.easycloud.co.in/api');
  // factory Urls.live() => const Urls('https://mtarlive.easycloud.co.in/api');

  //   factory Urls.steel_soulUAT() => const Urls('https://steel_soullive.easycloud.co.in/api');

  factory Urls.live() => const Urls('https://steel_soullive.easycloud.co.in/api');
  // factory Urls.steel_soulLive() =>
  //     const Urls('https://steel_soullive.easycloud.co.in/api');

  const Urls(this.url);

  final String url;

  static bool get isTest => Uri.parse(
    _reqisteredUrl.url,
  ).authority.split('.').first.toLowerCase().contains('uat');

  static final baseUrl = _reqisteredUrl.url;
  static final jsonWs = '$baseUrl/resource';
  static final cusWs = '$baseUrl/method';

  static String debugPrint() {
    print('DEBUG: baseUrl = $baseUrl');

    return 'Debug info logged';
  }


  static final appUpdate = '$cusWs/steelsoul.api.app_version.get_app_version';
  static final getUsers = '$cusWs/steelsoul.auth.user_login.custom_login';


  static final projectList = '$cusWs/steelsoul.api.api.get_project_list';
 static final getUnits = '$cusWs/steelsoul.api.api.get_unit_list';
  static final scannerCubit = '$cusWs/easy_reader.text_scanner.upload_image';
   static final getPanleList='$cusWs/steelsoul.api.api.get_panel_list';
      static final getPanel='$cusWs/steelsoul.api.api.update_panel_status';






  static String filepath(String path) {
    return '${baseUrl.replaceAll('api', '')}/${path.replaceAll('/private', '').replaceAll("///", '/')}';
  }

}