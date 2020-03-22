import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../search/presentation/widgets/search_app_bar.dart';
import '../widgets/left_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);

    return Scaffold(
      appBar: const SearchAppBar(title: 'Home'),
      drawer: LeftDrawer(),
      body: Container(),
    );
  }
}
