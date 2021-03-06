import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import '../../../../core/router/router.dart';
import '../../../../core/router/routes.dart';

class LeftDrawer extends StatelessWidget {
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
            'Wassistant',
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
          Navigator.pop(context);
          router.navigateTo(context, Routes.settings);
        },
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
