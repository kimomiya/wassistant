import 'package:flutter/material.dart';
import 'package:wassistant/ui/widgets/left_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
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
