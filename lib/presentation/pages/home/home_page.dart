import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/left_drawer/left_drawer.dart';
import '../../shared/search_app_bar/search_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);

    return Scaffold(
      appBar: const SearchAppBar('Home'),
      drawer: const LeftDrawer(),
      body: Container(),
    );
  }
}
