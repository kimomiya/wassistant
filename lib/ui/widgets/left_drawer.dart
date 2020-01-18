import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wassistant/core/constants/constant.dart';
import 'package:wassistant/ui/router/router.dart';
import 'package:wassistant/ui/router/routes.dart';
import 'package:wassistant/view_models/home_view_model.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeViewModel _homeViewModel = Provider.of(context);

    final List<Widget> _listItems = <Widget>[
      Container(
        padding: const EdgeInsets.only(top: 8, bottom: 12),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).accentColor,
              width: 0.2,
            ),
          ),
        ),
        child: ListTile(
          title: Text(
            Constant.appName,
            style: Theme.of(context).textTheme.title,
          ),
          subtitle: const Text('Admiral, are you free now?'),
          leading: Image.asset(
            'images/logo.png',
            width: 50,
            height: 50,
            fit: BoxFit.contain,
          ),
        ),
      ),
      ListTile(
        leading: IconTheme(
          data: IconThemeData(color: Theme.of(context).accentColor),
          child: const Icon(Icons.home),
        ),
        title: const Text('Home'),
        onTap: () {
          router.navigateTo(
            context,
            Routes.home,
            transition: TransitionType.cupertino,
          );
        },
      ),
      ListTile(
        leading: IconTheme(
          data: IconThemeData(color: Theme.of(context).accentColor),
          child: const Icon(Icons.directions_boat),
        ),
        title: const Text('Warships'),
        onTap: () {
          print('object');
        },
      ),
      ListTile(
        leading: IconTheme(
          data: IconThemeData(color: Theme.of(context).accentColor),
          child: Icon(Icons.assistant),
        ),
        title: const Text('Commander skill'),
        onTap: () {
          print('object');
        },
      ),
      ListTile(
        leading: IconTheme(
            data: IconThemeData(color: Theme.of(context).accentColor),
            child: const Icon(Icons.library_books)),
        title: const Text('Encyclopeida'),
        onTap: () {
          print('object');
        },
      ),
      ListTile(
        leading: IconTheme(
          data: IconThemeData(color: Theme.of(context).accentColor),
          child: Icon(Icons.settings),
        ),
        title: const Text('Settings'),
        onTap: () {
          const text = 'paramater!';
          router.navigateTo(
            context,
            '${Routes.settings}?text=$text',
            transition: TransitionType.cupertino,
          );
        },
      ),
      Container(
        padding: const EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Theme.of(context).accentColor,
              width: 0.2,
            ),
          ),
        ),
        child: ListTile(
          title: const Text('Dark Mode'),
          trailing: Switch(
            value: _homeViewModel.isDarkModeEnabled,
            onChanged: (bool isDarkModeEnabled) {
              _homeViewModel.setTheme(isDarkModeEnabled);
            },
          ),
        ),
      ),
    ];

    return Drawer(
      child: Container(
        margin: const EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: _listItems.length,
          itemBuilder: (_, int index) => _listItems[index],
        ),
      ),
    );
  }
}
