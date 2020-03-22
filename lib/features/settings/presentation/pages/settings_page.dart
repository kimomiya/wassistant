import 'package:flutter/material.dart';

import '../../../search/presentation/widgets/search_app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchAppBar(title: 'Settings'),
      body: Container(),
    );
  }
}
