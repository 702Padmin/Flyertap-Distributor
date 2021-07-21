import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:run_tracker/dbhelper/DataBaseHelper.dart';
import 'package:run_tracker/dbhelper/database.dart';
import 'package:run_tracker/ui/home/HomeWizardScreen.dart';
import 'package:run_tracker/ui/profile/ProfileScreen.dart';
import 'package:run_tracker/ui/settings/SettingScreen.dart';
import 'package:run_tracker/ui/startRun/StartRunScreen.dart';
import 'package:run_tracker/ui/useLocation/UseLocationScreen.dart';
import 'package:run_tracker/ui/wellDoneScreen/WellDoneScreen.dart';
import 'package:run_tracker/utils/Color.dart';
import 'package:run_tracker/utils/Preference.dart';

import 'localization/locale_constant.dart';
import 'localization/localizations_delegate.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preference().instance();
  await DataBaseHelper().initialize();

  // final database = await $FloorFlutterDatabase.databaseBuilder('flutter_database.db').build();

  // final dao = database.runningDao;

  // runApp(MyApp(database));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  /*final FlutterDatabase? database;

  MyApp(this.database);*/

  static void setLocale(BuildContext context, Locale newLocale) {
    var state = context.findAncestorStateOfType<_MyAppState>()!;
    state.setLocale(newLocale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() async {
    getLocale().then((locale) {
      setState(() {
        _locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: (context, child) {
          return MediaQuery(
            child: child!,
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          );
        },
        theme: ThemeData(
          splashColor: Colur.transparent,
          highlightColor: Colur.transparent,
          fontFamily: 'Roboto',
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        locale: _locale,
        supportedLocales: [
          Locale('en', ''),
          Locale('ar', ''),
          Locale('hi', '')
        ],
        localizationsDelegates: [
          AppLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale?.languageCode &&
                supportedLocale.countryCode == locale?.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          accentColor: Colur.white,
          accentIconTheme: IconThemeData(color: Colur.white),
          appBarTheme: AppBarTheme(
            brightness: Brightness.light,
            backgroundColor: Colur.transparent,
          ),
        ),
        home: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            statusBarColor: Colur.transparent,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.light,
            systemNavigationBarColor: Colur.common_bg_dark,
          ),
          // child: WeeklyGoalSetScreen(),
          // child: CountdownTimerScreen(isGreen: false),
          child: HomeWizardScreen(),
          //child: RegistrationScreen(),
        ),
        routes: <String, WidgetBuilder>{
           '/settingScreen': (BuildContext context) => SettingScreen(),
           '/startrunScreen': (BuildContext context) => StartRunScreen(),
           '/wellDoneScreen': (BuildContext context) => WellDoneScreen(),
           '/profileScreen': (BuildContext context) => ProfileScreen(),
           '/homeWizardScreen': (BuildContext context) => HomeWizardScreen(),
           '/uselocationScreen': (BuildContext context) => UseLocationScreen(),
      /*'/changeusername': (BuildContext context) =>
          ChangeUsernameScreen(),
      '/changepassword': (BuildContext context) =>
          ChangePasswordScreen(),*/
        });
  }
}
