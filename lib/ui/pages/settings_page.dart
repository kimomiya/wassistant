import 'package:flutter/material.dart';
import 'package:wassistant/ui/widgets/left_drawer.dart';
import 'package:wassistant/ui/widgets/navigation_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({@required this.text});

  final String text;
  String get _title => 'Settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationBar(_title),
      body: Center(
        child: Text(text),
      ),
      drawer: const LeftDrawer(),
    );
  }
}
