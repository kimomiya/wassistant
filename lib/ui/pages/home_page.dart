import 'package:flutter/material.dart';
import 'package:wassistant/ui/widgets/left_drawer.dart';
import 'package:wassistant/ui/widgets/navigation_bar.dart';

class HomePage extends StatelessWidget {
  final _title = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationBar(_title),
      body: Container(
        child: const Center(
          child: Text('Hello world!'),
        ),
        color: Theme.of(context).primaryColor,
      ),
      drawer: const LeftDrawer(),
    );
  }
}
