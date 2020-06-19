import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassistant/features/encyclopedia/presentation/widgets/left_drawer.dart';
import 'package:wassistant/features/encyclopedia/presentation/widgets/search_app_bar.dart';

class PediaPage extends StatelessWidget {
  const PediaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334);

    return Scaffold(
      appBar: const SearchAppBar(title: 'Pedia'),
      drawer: LeftDrawer(),
      body: Container(),
    );
  }
}
