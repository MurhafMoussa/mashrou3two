import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:mashrou3two/features/auth/presentation/screens/choose_account_type_screen.dart';
import 'package:mashrou3two/features/auth/presentation/screens/client_registration_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

class RoutesManager {
  RoutesManager() {
    _appRouter = GoRouter(
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: true,
      initialLocation: '/clientRegistration',
      routes: [
        GoRoute(
          path: '/chooseAccountType',
          name: AppRoutesNames.chooseAccountType,
          pageBuilder: (context, state) => CupertinoPage(
            child: const ChooseAccountTypeScreen(),
            key: state.pageKey,
            name: state.name,
          ),
        ),GoRoute(
          path: '/clientRegistration',
          name: AppRoutesNames.userRegistration,
          pageBuilder: (context, state) => CupertinoPage(
            child: const ClientRegistrationScreen(),
            key: state.pageKey,
            name: state.name,
          ),
        ),
        // GoRoute(
        //   path: '/register',
        //   name: AppRoutesNames.register,
        //   pageBuilder: (context, state) => CupertinoPage(
        //     child: const RegisterPage(),
        //     key: state.pageKey,
        //     name: state.name,
        //   ),
        // ),
        // GoRoute(
        //   path: '/login',
        //   name: AppRoutesNames.login,
        //   pageBuilder: (context, state) => CupertinoPage(
        //     child: const SignInPage(),
        //     key: state.pageKey,
        //     name: state.name,
        //   ),
        // ),
        //
      ],
    );
  }
  late final GoRouter _appRouter;
  GoRouter get router => _appRouter;
}

class AppRoutesNames {
  AppRoutesNames._();
  static const String userRegistration = 'UserRegistrationRout';
  static const String chooseAccountType = 'ChooseAccountTypeRout';
}
