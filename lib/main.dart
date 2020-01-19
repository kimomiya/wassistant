import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:wassistant/core/constants/constant.dart';
import 'package:wassistant/ui/router/router.dart';
import 'package:wassistant/ui/router/routes.dart';
import 'package:wassistant/view_models/home_view_model.dart';

void main() {
  Routes.configure();

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
        builder: (_, model, __) {
          return OKToast(
            position: ToastPosition(
              align: Alignment.bottomCenter,
            ),
            backgroundColor: model.appTheme.accentColor,
            child: MaterialApp(
              title: Constant.appName,
              theme: model.appTheme,
              onGenerateRoute: router.generator,
              debugShowCheckedModeBanner: false,
            ),
          );
        },
      ),
    );
  }
}
