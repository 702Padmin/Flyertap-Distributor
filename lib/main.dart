import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:run_tracker/dbhelper/DataBaseHelper.dart';
import 'package:run_tracker/dbhelper/database.dart';
import 'package:run_tracker/ui/drinkWaterScreen/DrinkWaterLevelScreen.dart';
import 'package:run_tracker/ui/home/HomeScreen.dart';
import 'package:run_tracker/ui/home/HomeWizardScreen.dart';
import 'package:run_tracker/ui/mapsettings/MapSettingScreen.dart';
import 'package:run_tracker/ui/profile/ProfileScreen.dart';
import 'package:run_tracker/ui/profilesettings/ProfileSettingScreen.dart';
import 'package:run_tracker/ui/reminder/ReminderScreen.dart';
import 'package:run_tracker/ui/shareScreen/ShareScreen.dart';
import 'package:run_tracker/ui/startRun/StartRunScreen.dart';
import 'package:run_tracker/ui/useLocation/UseLocationScreen.dart';
import 'package:run_tracker/ui/wellDoneScreen/WellDoneScreen.dart';
import 'package:run_tracker/utils/Color.dart';
import 'package:run_tracker/utils/Preference.dart';

import 'localization/locale_constant.dart';
import 'localization/localizations_delegate.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/subjects.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:intl/date_symbol_data_local.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

/// Streams are created so that app can respond to notification-related events
/// since the plugin is initialised in the `main` function
final BehaviorSubject<ReceivedNotification> didReceiveLocalNotificationSubject =
    BehaviorSubject<ReceivedNotification>();

final BehaviorSubject<String?> selectNotificationSubject =
    BehaviorSubject<String?>();

class ReceivedNotification {
  ReceivedNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.payload,
  });

  final int id;
  final String? title;
  final String? body;
  final String? payload;
}

String? selectedNotificationPayload;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preference().instance();
  await DataBaseHelper().initialize();

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('app_icon');

  /// Note: permissions aren't requested here just to demonstrate that can be
  /// done later
  final IOSInitializationSettings initializationSettingsIOS =
      IOSInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
    onDidReceiveLocalNotification:
        (int id, String? title, String? body, String? payload) async {
      didReceiveLocalNotificationSubject.add(ReceivedNotification(
          id: id, title: title, body: body, payload: payload));
    },
  );

  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
  );

  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onSelectNotification: (String? payload) async {
    if (payload != null) {
      debugPrint('notification payload: $payload');
    }
    selectedNotificationPayload = payload;
    selectNotificationSubject.add(payload);
  });

  _configureLocalTimeZone();

  runApp(MyApp());
}

Future<void> _configureLocalTimeZone() async {
  tz.initializeTimeZones();
  final String? timeZoneName = await FlutterNativeTimezone.getLocalTimezone();
  tz.setLocalLocation(tz.getLocation(timeZoneName!));
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
        initializeDateFormatting(_locale!.languageCode);
      });
    });
    super.didChangeDependencies();
  }

  @override
  void initState() {

    super.initState();
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
          '/settingScreen': (BuildContext context) => MapSettingScreen(),
          '/startrunScreen': (BuildContext context) => StartRunScreen(),
          '/wellDoneScreen': (BuildContext context) => WellDoneScreen(),
          '/profileScreen': (BuildContext context) => ProfileScreen(),
          '/homeWizardScreen': (BuildContext context) => HomeWizardScreen(),
          '/uselocationScreen': (BuildContext context) => UseLocationScreen(),
          '/drinkWaterLevelScreen': (BuildContext context) =>
              DrinkWaterLevelScreen(),
          '/profileSettingScreen': (BuildContext context) =>
              ProfileSettingScreen(),
          '/reminder': (BuildContext context) => ReminderScreen(),
          /*'/changeusername': (BuildContext context) =>
          ChangeUsernameScreen(),
      '/changepassword': (BuildContext context) =>
          ChangePasswordScreen(),*/
        });
  }
}
