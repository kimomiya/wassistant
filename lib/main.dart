import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:wassistant/core/constants/constant.dart';
import 'package:wassistant/ui/pages/home_page.dart';
import 'package:wassistant/view_models/home_view_model.dart';

void main() => runApp(Wassistant());

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
            home: const HomePage(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
