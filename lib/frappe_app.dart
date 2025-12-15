import 'package:steel_soul/core/core.dart';
import 'package:steel_soul/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steel_soul/features/auth/presentation/bloc/sign_in/sign_in_cubit.dart';

class AparnaApp extends StatelessWidget {
  const AparnaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => $sl.get<AuthCubit>()..authCheckRequested(),
        ),
        BlocProvider(create: (_) => $sl.get<SignInCubit>()),
        // BlocProvider(create: (_) => GateEntryFilterCubit()),
        // BlocProvider(create: (_) => GateExitFilterCubit()),
        // BlocProvider(create: (_) => VrtFiltersCubit()),
        // BlocProvider(create: (_) => GateEntryBlocProvider.get().createGateEntriesCubit()),
        // BlocProvider(create: (_) => GateExitBlocProvider.get().createGateExitsCubit()),
        // BlocProvider(create: (_) => VRTBlocProvider.get().fetchVRTListCubit())
      ],
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (_, state) {
          final routerCtxt = AppRouterConfig.parentNavigatorKey.currentContext;
          state.maybeWhen(
            orElse: () => AppRoute.initial.go(routerCtxt!),
            authenticated: () {
              // final filters = Pair(StringUtils.docStatusInt('All'), null);
          final routerCtxt = AppRouterConfig.parentNavigatorKey.currentContext!;
              // routerCtxt
              //   .cubit<BinListCubit>()
              //       .fetchInitial();
              //   ..cubit<GateExitsCubit>()
              //       .fetchInitial(PageListFilters.initial())
              //   ..cubit<GetVRTList>().fetchInitial(filters); 
              AppRoute.home.go(routerCtxt);
            },
            unAuthenticated: () => AppRoute.login.go(routerCtxt!),
          );
        },
        builder: (_, state) {
          return MaterialApp.router(
            title: "Cool Tech",
            // theme: AppMaterialTheme.lightTheme,
            // darkTheme: AppMaterialTheme.lightTheme,
            routerConfig: AppRouterConfig.router,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
