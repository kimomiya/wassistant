import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/enums/prefs_key.dart';

class SliverSearchBar extends StatelessWidget implements PreferredSizeWidget {
  const SliverSearchBar({
    Key key,
    this.title,
    @required this.slivers,
  }) : super(key: key);

  final Widget title;

  /// The slivers to place inside the viewport.
  final List<Widget> slivers;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          snap: true,
          floating: true,
          forceElevated: true,
          title: title,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                await showSearch(
                  context: context,
                  delegate: _PlayerSearchDelegate(prefs),
                );
              },
            ),
          ],
        ),
        ...slivers,
      ],
    );
  }
}

class _PlayerSearchDelegate extends SearchDelegate<String> {
  _PlayerSearchDelegate(this._prefs);

  final SharedPreferences _prefs;

  List<String> _getSearchHistory() {
    final prefKey = PrefsKey.searchHistory.toString();
    return _prefs.getStringList(prefKey) ?? [];
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: transitionAnimation,
        ),
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isNotEmpty) {
      final histories = _getSearchHistory();
      histories.remove(query);
      histories.add(query);
      _prefs.setStringList(
        PrefsKey.searchHistory.toString(),
        histories,
      );
    }

    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var histories = _getSearchHistory();
    if (histories.isNotEmpty) {
      histories = histories.where((item) => item.contains(query)).toList();
      histories = histories.reversed.toList();
    }

    return Container(
      child: ListView.builder(
        itemCount: histories.length,
        itemBuilder: (_, index) => ListTile(
          leading: Icon(Icons.history),
          title: Text(histories[index]),
          trailing: Transform.rotate(
            angle: -pi / 4,
            child: Icon(Icons.arrow_upward),
          ),
          onTap: () {
            // set tapped text to query and do search
            query = histories[index];
            showResults(context);
          },
        ),
      ),
    );
  }
}
