import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wassistant/ui/components/left_drawer.dart';
import 'package:wassistant/ui/components/navigation_bar.dart';
import 'package:wassistant/view_models/app_view_model.dart';

class RootPage extends StatelessWidget {
  final _title = 'Home';

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (_, appViewModel, __) {
        return Scaffold(
          appBar: NavigationBar(_title),
          body: Container(
            child: const Center(
              child: Text('Hello world!'),
            ),
            color: Theme.of(context).primaryColor,
          ),
          drawer: LeftDrawer(appViewModel),
        );
      },
    );
  }
}
