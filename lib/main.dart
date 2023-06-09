import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashrou3two/I10n/generated/l10n.dart';
import 'package:mashrou3two/bloc_observer.dart';
import 'package:mashrou3two/core/resources/color_manager.dart';
import 'package:mashrou3two/core/resources/strings_manager.dart';
import 'package:mashrou3two/injection.dart';

Future<void> main() async {
  BlocObserver blocObserver = const AppBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  await configureDependencies();

  BlocOverrides.runZoned(
    () => runApp(
      const App(),
    ),
    blocObserver: blocObserver,
  );
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, widget) => MaterialApp.router(
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context).appTitle,
          localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale(StringsManager.english),
          ],
          debugShowCheckedModeBanner: false,
        ),
      );
}
