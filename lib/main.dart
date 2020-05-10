import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import 'injection.dart' as di;
import 'presentation/router/router.dart';
import 'presentation/router/routes.dart';

Future<void> main() async {
  Crashlytics.instance.enableInDevMode = true;
  FlutterError.onError = Crashlytics.instance.recordFlutterError;

  WidgetsFlutterBinding.ensureInitialized();

  di.configure();

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
