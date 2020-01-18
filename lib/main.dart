import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:wassistant/core/constants/constant.dart';
import 'package:wassistant/ui/router/router.dart';
import 'package:wassistant/ui/router/routes.dart';
import 'package:wassistant/view_models/home_view_model.dart';

void main() {
  Routes.configureRoutes();

  runApp(Wassistant());
}

class Wassistant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <SingleChildWidget>[
        ChangeNotifierProvider<HomeViewModel>(
          create: (_) => HomeViewModel(),
        ),
      ],
      child: Consumer<HomeViewModel>(
        builder: (_, HomeViewModel _model, __) {
          return MaterialApp(
            title: Constant.appName,
            theme: _model.appTheme,
            onGenerateRoute: router.generator,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
