import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:wassistant/core/constants/constant.dart';
import 'package:wassistant/ui/router/router.dart';
import 'package:wassistant/ui/router/routes.dart';
import 'package:wassistant/view_models/app_view_model.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer(this._appViewModel);

  final AppViewModel _appViewModel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final _listItems = <Widget>[
      Container(
        padding: const EdgeInsets.only(top: 8, bottom: 12),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: theme.accentColor,
              width: 0.2,
            ),
          ),
        ),
        child: ListTile(
          title: Text(
            Constant.appName,
            style: theme.textTheme.title,
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
          data: IconThemeData(color: theme.accentColor),
          child: const Icon(Icons.home),
        ),
        title: const Text('Home'),
        onTap: () {
          router.navigateTo(
            context,
            Routes.root,
            transition: TransitionType.cupertino,
          );
        },
      ),
      ListTile(
        leading: IconTheme(
          data: IconThemeData(color: theme.accentColor),
          child: const Icon(Icons.directions_boat),
        ),
        title: const Text('Warships'),
        onTap: () {
          showToast('coming soooon');
        },
      ),
      ListTile(
        leading: IconTheme(
          data: IconThemeData(color: theme.accentColor),
          child: Icon(Icons.assistant),
        ),
        title: const Text('Commander skill'),
        onTap: () {
          showToast('coming soooon');
        },
      ),
      ListTile(
        leading: IconTheme(
            data: IconThemeData(color: theme.accentColor),
            child: const Icon(Icons.library_books)),
        title: const Text('Encyclopeida'),
        onTap: () {
          showToast('coming soooon');
        },
      ),
      ListTile(
        leading: IconTheme(
          data: IconThemeData(color: theme.accentColor),
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
              color: theme.accentColor,
              width: 0.2,
            ),
          ),
        ),
        child: ListTile(
          title: const Text('Dark Mode'),
          trailing: Switch(
            value: _appViewModel.isDarkModeEnabled,
            onChanged: (bool isDarkModeEnabled) {
              _appViewModel.setTheme(isDarkModeEnabled);
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
