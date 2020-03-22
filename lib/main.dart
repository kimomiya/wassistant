import 'package:fimber/fimber.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import 'core/router/router.dart';
import 'core/router/routes.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  Crashlytics.instance.enableInDevMode = true;
  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  Fimber.plantTree(DebugTree());

  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  Routes.configure();

  runApp(Wassistant());
}

class Wassistant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final analytics = FirebaseAnalytics();

    return OKToast(
      position: ToastPosition(
        align: Alignment.bottomCenter,
      ),
      child: MaterialApp(
        title: 'Wassistant',
        onGenerateRoute: router.generator,
        // TODO(hiei): will be added later
        // navigatorObservers: [
        //   FirebaseAnalyticsObserver(analytics: analytics),
        // ],
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
