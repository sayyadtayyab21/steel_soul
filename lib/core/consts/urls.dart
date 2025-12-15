import 'package:steel_soul/core/di/injector.dart';

final _reqisteredUrl = $sl.get<Urls>(instanceName: 'baseUrl');

class Urls {

  factory Urls.uat() => const Urls('https://mtaruat.easycloud.co.in/api');
  factory Urls.live() => const Urls('https://mtarlive.easycloud.co.in/api');

  //   factory Urls.steel_soulUAT() => const Urls('https://steel_soullive.easycloud.co.in/api');
    
  // factory Urls.live() => const Urls('https://steel_soullive.easycloud.co.in/api');
  // factory Urls.steel_soulLive() =>
  //     const Urls('https://steel_soullive.easycloud.co.in/api');

  const Urls(this.url);

  final String url;

  static bool get isTest => Uri.parse(_reqisteredUrl.url)
      .authority
      .split('.')
      .first
      .toLowerCase()
      .contains('uat');

  static final baseUrl = _reqisteredUrl.url;
  static final jsonWs = '$baseUrl/resource';
  static final cusWs = '$baseUrl/method';

  static String debugPrint() {
    print('DEBUG: baseUrl = $baseUrl');
    print('DEBUG: login = $login');
    return 'Debug info logged';
  }

  static final uploadFiles = '$cusWs/mtar.api.upload_files';
  static final appUpdate = '$cusWs/steel_soul_erp.api.common.get_app_version';
  static final login = '$cusWs/mtar.auth.user_login.custom_login';
  static final getUsers = '$cusWs/mtar_erp.auth.user_login.custom_login';
  static final getFinishedGoodsBins = '$cusWs/steel_soul_erp.api.inward.get_finished_goods_bins';
  static final getFinishedGoodsBinsTest = '$cusWs/frappe.client.get_list';
  static final binInward = '$cusWs/steel_soul_erp.api.inward.post_finished_goods_bin_inward';


  static final pickingList = '$cusWs/steel_soul_erp.api.picking.pick_item';
  static final woodenList = '$cusWs/steel_soul_erp.api.wooden_crating.wooden_crate';

  static final pickingKit = '$cusWs/steel_soul_erp.api.picking.pick_kit_items';
  static final pdiList = '$cusWs/steel_soul_erp.api.pdi.pre_dispatch_inspection';
  static final kittingList = '$cusWs/steel_soul_erp.api.kitting.item_kitting';
  // static final pickingList = '$cusWs/steel_soul_erp.api.picking.pick_item';

  static final getList = '$cusWs/frappe.client.get_list';
  static final getOutwardList = '$cusWs/frappe.client';
  static final createGateEntry = '$cusWs/steel_soul.api.createGateEntry';
  static final submitGateEntry = '$cusWs/steel_soul.api.submit_gate_entry';
  static final submitContractEmployee =
      '$cusWs/steel_soul.api.submitContractEmployee';
  static final createContractEmployee = '$cusWs/steel_soul.api.create_contractor';

  static final gateExitList = '$cusWs/steel_soul.api.getGateExit';
  static final getGateExit = '$cusWs/steel_soul.api.getGateExitDetails';
  static final newGateExit = '$cusWs/steel_soul.api.createGateExit';
  static final submitGateExit = '$cusWs/steel_soul.api.submitGateExit';
  static final getVehicleNumber =
      '$cusWs/easygateentry.api.getvehiclenumberfromsalesinvoice';
  static final poList = '$cusWs/easygateentry.api.po_list';
  static final createInviteVisitor = '$cusWs/steel_soul.api.create_invite_visitor';
  static final submitInviteVisitor = '$cusWs/steel_soul.api.submit_invite_visitor';
  static final updateGateEntry = '$cusWs/steel_soul.api.update_gate_entry';
  static final updateContractEmployee =
      '$cusWs/steel_soul.api.update_contractors_employee';

  static final updateGateExit = '$cusWs/steel_soul.api.update_gate_exit';
  static final deleteLines = '$cusWs/steel_soul.api.remove_lines';

  static final createGateExit = '$cusWs/steel_soul.api.create_gate_exit';
  // static final submitGateExit = '$cusWs/steel_soul.api.submit_gate_Exit';
  static final receiverAddress = '$cusWs/steel_soul.api.get_address';
  static final supplierName = '$jsonWs/Supplier';
  static final customerName = '$jsonWs/Customer';
  static final companyName = '$jsonWs/Company';
  static final department = '$jsonWs/Department';
  static final incidentType = '$jsonWs/Incident Type';
  static final defaultGateEntry = '$jsonWs/Gate Entry';
  static final defaultGateExit = '$jsonWs/Gate Exit';
  static final defaultOutward = '$jsonWs/Outward Gate Pass RGP';
  static final defaultInward = '$jsonWs/Inward Gate Pass RGP';
  static final item = '$jsonWs/Item';
  static final uomList = '$jsonWs/UOM';
  static final outwardlist = '$cusWs/steel_soul.api.get_outwards_for_inward';

  static final createIncidentRegister =
      '$cusWs/steel_soul.api.create_incident_register';

  static final submitIncidentRegister =
      '$cusWs/steel_soul.api.submit_incident_register';

  static final createVisitorInOut = '$cusWs/steel_soul.api.create_in_out';
  static final submitVisitorInOut = '$cusWs/steel_soul.api.submit_in_out';

  static final getVisitors = '$cusWs/steel_soul.api.get_visitors';
  static final createVisit = '$cusWs/steel_soul.api.create_visit';
  static final submitVisit = '$cusWs/steel_soul.api.submit_create_visit';
  static final approvalWorkFlow = '$cusWs/frappe.model.workflow.apply_workflow';
  static final userPermission =
      '$cusWs/steel_soul.api.check_user_permission_for_visit_approval';

  static final createOutward = '$cusWs/steel_soul.api.create_outward_gatepass';
  static final updateOutward = '$cusWs/steel_soul.api.update_outward_gatepass';
  static final submitOutward = '$cusWs/steel_soul.api.submit_outward_gatepass';

  static final createInward = '$cusWs/steel_soul.api.create_inward_gatepass';
  static final updateInward = '$cusWs/steel_soul.api.update_inward_gatepass';
  static final submitInward = '$cusWs/steel_soul.api.submit_inward_gatepass';
  // static final getFinishedGoodsBins = '$cusWs/steel_soul_erp.api.inward.get_finished_goods_bins';

  static final createEmptyVehicle =
      '$cusWs/steel_soul.api.create_empty_vehicle_tracking';
  static final updateEmptyVehicle =
      '$cusWs/steel_soul.api.update_empty_vehicle_tracking';
  static final submitEmptyVehicle =
      '$cusWs/steel_soul.api.submit_empty_vehicle_tracking';

  static final removelines = '$cusWs/steel_soul.api.remove_outward_or_inward_items';

  static final pickingBinInward = '$cusWs/steel_soul_erp.api.picking.pick_item';


  //Stock Entry
  static final createStockEntry = '$cusWs/steel_soul_erp.api.inward.create_stock_entry';
  static final updateStockEntry = '$cusWs/steel_soul_erp.api.inward.update_stock_entry';
  static final submitStockEntry = '$cusWs/steel_soul_erp.api.inward.submit_stock_entry';
  static final validateInward = '$cusWs/steel_soul_erp.api.inward.validate_bin_part';

  static filepath(String path) {
    return '${baseUrl.replaceAll('api', '')}/${path.replaceAll('/private', '').replaceAll("///", '/')}';
  }
}
