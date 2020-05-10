import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart' hide NestedScrollView;

import '../../../shared/enums/search_type.dart';
import 'search_result_tab_bar_body.dart';
import 'search_result_tab_bar_header.dart';

class SearchResultView extends StatefulWidget {
  const SearchResultView(this.query);

  final String query;

  @override
  _SearchResultViewState createState() => _SearchResultViewState(query);
}

class _SearchResultViewState extends State<SearchResultView>
    with SingleTickerProviderStateMixin {
  _SearchResultViewState(this.query);

  final String query;

  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: SearchType.values.length,
      vsync: this,
    );

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      /// Fix vanilla NestedScrollView issue:
      /// [inner scrollables in tabview sync]
      /// (https://github.com/flutter/flutter/issues/21868)
      innerScrollPositionKeyBuilder: () => Key('Tab${_tabController.index}'),
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return <Widget>[SearchResultTabBarHeader(_tabController)];
      },
      body: SearchResultTabBarBody(_tabController, query: query),
    );
  }
}
