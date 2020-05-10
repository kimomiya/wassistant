import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/enums/search_type.dart';

class SearchResultTabBarHeader extends StatelessWidget {
  const SearchResultTabBarHeader(this.controller);

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverPersistentHeader(
      delegate: _SliverHeaderDelegate(
        tabBar: TabBar(
          tabs: SearchType.values.map((type) => Tab(text: type.text)).toList(),
          controller: controller,
          labelColor: theme.primaryColor,
          labelStyle: TextStyle(
            fontSize: 32.sp.toDouble(),
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelColor: theme.hintColor,
          unselectedLabelStyle: TextStyle(
            fontSize: 28.sp.toDouble(),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

//* Components

class _SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  const _SliverHeaderDelegate({@required this.tabBar});

  final TabBar tabBar;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return tabBar;
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}
