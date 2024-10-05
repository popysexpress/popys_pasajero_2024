import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:popys_pasajero_2024/bloc_providers.dart';
import 'package:popys_pasajero_2024/injection.dart';
import 'package:popys_pasajero_2024/src/config/app_export.dart';
import 'package:popys_pasajero_2024/src/config/theme/app_theme.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/onboard/onboard_screen.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/welcome/welcome_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders,
      child: MaterialApp(
        builder: FToastBuilder(),
        debugShowCheckedModeBanner: false,
        title: 'Popys Pasajero',
        theme: AppTheme(selectColor: 0).theme(),
        initialRoute: 'welcome',
        routes: {
          'onboard': (BuildContext context) => const OnboardScreen(),
          'welcome': (BuildContext context) => const WelcomeScreen(),
        },
        //home: const OnboardScreen(),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          S.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}
