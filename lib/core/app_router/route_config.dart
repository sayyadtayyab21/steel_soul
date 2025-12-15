import 'package:steel_soul/app/presentation/app_home_page.dart';
import 'package:steel_soul/app/presentation/app_profile_page.dart';
import 'package:steel_soul/app/presentation/app_splash_scrn.dart';
import 'package:steel_soul/app/presentation/app_update_blocprovider.dart';
import 'package:steel_soul/app/widgets/app_scaffold_widget.dart';
import 'package:steel_soul/core/core.dart';
import 'package:steel_soul/features/auth/presentation/authentication_scrn.dart';
import 'package:steel_soul/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouterConfig {
  static final parentNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: parentNavigatorKey,
    initialLocation: AppRoute.initial.path,
    routes: <RouteBase>[
      GoRoute(
        path: AppRoute.initial.path,
        builder: (_, state) => const AppSplashScreen(),
      ),
      GoRoute(
        path: AppRoute.login.path,
        builder: (_, state) => const AuthenticationScrn(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return AppScaffoldWidget(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoute.home.path,
                builder: (_, state) => BlocProvider(
                  create: (_) =>
                      AppUpdateBlocprovider.get().appversionCubit()..request(),
                  child: const AppHomePage(),
                ),
                routes: [
                  // GoRoute(
                  //   path: _getPath(AppRoute.gateEntry),
                  //   builder: (ctxt, state) => const GateEntryListScrn(),
                  //   routes: [
                  //     GoRoute(
                  //       path: _getPath(AppRoute.newGateEntry),
                  //       onExit: (context, state) async =>
                  //           await _promptConf(context),
                  //       builder: (_, state) {
                  //         final provider = IncidentRegisterBlocProvider.get();
                  //         final gateEntryForm = state.extra as GateEntryForm?;
                  //         return MultiBlocProvider(
                  //           providers: [
                  //             BlocProvider(
                  //                 create: (_) =>
                  //                     provider.companyNameList()..request()),
                  //             BlocProvider(
                  //                 create: (_) => GateEntryBlocProvider.get()
                  //                     .receiverAddressList()),
                  //             BlocProvider(
                  //                 create: (_) => GateEntryBlocProvider.get()
                  //                     .supplierNameList()
                  //                   ..request()),
                  //             BlocProvider(
                  //               create: (_) {
                  //                 final bloc = GateEntryBlocProvider.get()
                  //                     .fetchGateEntryLines();
                  //                 if (gateEntryForm != null) {
                  //                   bloc.request(gateEntryForm.name);
                  //                 }
                  //                 return bloc;
                  //               },
                  //             ),
                  //             BlocProvider(
                  //               create: (_) {
                  //                 final bloc = GateEntryBlocProvider.get()
                  //                     .attachmentsList();
                  //                 if (gateEntryForm != null) {
                  //                   bloc.request(gateEntryForm.name);
                  //                 }
                  //                 return bloc;
                  //               },
                  //             ),
                  //             BlocProvider(
                  //                 create: (_) => GateEntryBlocProvider.get()
                  //                     .receiverNameList()
                  //                   ..request()),
                  //             BlocProvider(
                  //                 create: (_) => $sl.get<CreateGateEntryCubit>()
                  //                   ..initDetails(gateEntryForm)),
                  //           ],
                  //           child: const NewGateEntry(),
                  //         );
                  //       },
                  //     ),
                  //   ],
                  // ),
                  // GoRoute(
                  //   path: _getPath(AppRoute.gateExit),
                  //   builder: (ctxt, state) => const GateExitListScrn(),
                  //   routes: [
                  //     GoRoute(
                  //       path: _getPath(AppRoute.newGateExit),
                  //       builder: (_, state) {
                  //         final provider = GateExitBlocProvider.get();
                  //         final name = state.extra as String?;
                  //         return MultiBlocProvider(
                  //           providers: [
                  //             if (name.isNull) ...[
                  //               BlocProvider(
                  //                   create: (_) => provider.getDetails()),
                  //             ] else ...[
                  //               BlocProvider(
                  //                   create: (_) =>
                  //                       provider.getDetails()..request(name!)),
                  //             ],
                  //             BlocProvider(
                  //                 create: (_) => provider.getVehicleNumber()),
                  //             BlocProvider(
                  //                 create: (_) =>
                  //                     $sl.get<CreateGateExitCubit>()),
                  //           ],
                  //           child: const NewGateExit(),
                  //         );
                  //       },
                  //       routes: [
                  //         GoRoute(
                  //           path: _getPath(AppRoute.newGateExitPreview),
                  //           builder: (_, state) {
                  //             final data = state.extra as Pair<String, String?>;
                  //             return ImagePreviewScrn.fromPair(data);
                  //           },
                  //         ),
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  // GoRoute(
                  //   path: _getPath(AppRoute.incidentRegister),
                  //   builder: (_, state) => const IncidentRegisterListScrn(),
                  //   routes: [
                  //     GoRoute(
                  //       path: _getPath(AppRoute.newIncidentReg),
                  //       onExit: (context, state) async =>
                  //           await _promptConf(context),
                  //       builder: (_, state) {
                  //         final provider = IncidentRegisterBlocProvider.get();
                  //         final incRegForm =
                  //             state.extra as IncidentRegisterForm?;
                  //         return MultiBlocProvider(
                  //           providers: [
                  //             BlocProvider(
                  //                 create: (_) =>
                  //                     provider.incidentTypeList()..request()),
                  //             BlocProvider(
                  //                 create: (_) =>
                  //                     provider.companyNameList()..request()),
                  //             BlocProvider(
                  //               create: (_) =>
                  //                   $sl.get<CreateIncidentRegisterCubit>()
                  //                     ..initDetails(incRegForm),
                  //             ),
                             
                  //           ],
                  //           child: const NewIncidentRegister(),
                  //         );
                  //       },
                  //     ),
                  //   ],
                  // ),
                  // GoRoute(
                  //   path: _getPath(AppRoute.contractEmployee),
                  //   builder: (_, state) => const ContractEmployessList(),
                  //   routes: [
                  //     GoRoute(
                  //       path: _getPath(AppRoute.newContractEmployee),
                  //       onExit: (context, state) async =>
                  //           await _promptConf(context),
                  //       builder: (_, state) {
                  //         final provider = ContractEmployeeBlocProvider.get();
                  //         final incRegForm =
                  //             state.extra as ContractEmployeeForm?;
                  //         return MultiBlocProvider(
                  //           providers: [
                  //             BlocProvider(
                  //                 create: (_) =>
                  //                     provider.contractorsListCubit()),
                  //             BlocProvider(
                  //                 create: (_) =>
                  //                     $sl.get<CreateContractEmployeeCubit>()
                  //                       ..initDetails(incRegForm)),

                                
                  //           ],
                  //           child: const NewContractEmployee(),
                  //         );
                  //       },
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoute.account.path,
                builder: (_, __) => const AppProfilePage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  static Future<bool> _promptConf(BuildContext context) async {
    final promptConf = shouldAskForConfirmation.value;
    if (!promptConf) return true;
    return await AppDialog.askForConfirmation<bool?>(
          context,
          title: 'Are you sure',
          confirmBtnText: 'Yes',
          content: Messages.clearConfirmation,
          onTapConfirm: () => context.exit(true),
          onTapDismiss: () => context.exit(false),
        ) ??
        false;
  }

  static String _getPath(AppRoute route) => route.path.split('/').last;
}
