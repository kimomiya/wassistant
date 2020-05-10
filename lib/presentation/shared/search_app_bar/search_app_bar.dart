import 'dart:math';

import 'package:flutter/material.dart' hide NestedScrollView;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/search/search_bloc.dart';
import '../../../injection.dart';
import 'search_result_view.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar(this.title);

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () async {
            await showSearch(
              context: context,
              delegate: _SearchDelegate(),
            );
          },
        ),
      ],
    );
  }
}

//* Components

class _SearchDelegate extends SearchDelegate<String> {
  final _bloc = locator<SearchBloc>();

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
    if (query.isEmpty) {
      return Container();
    }
    return SearchResultView(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    _bloc.add(SearchEvent.searchWordChanged(query));

    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return state.maybeMap(
          getSuggestibleHistorySuccess: (state) {
            return ListView.builder(
              itemCount: state.history.size,
              itemBuilder: (_, index) => ListTile(
                leading: Icon(Icons.history),
                title: Text(state.history[index]),
                trailing: Transform.rotate(
                  angle: -pi / 4,
                  child: Icon(Icons.arrow_upward),
                ),
                onTap: () {
                  // set tapped text to query and do search
                  query = state.history[index];
                  showResults(context);
                },
              ),
            );
          },
          orElse: () => Container(),
        );
      },
      bloc: _bloc,
    );
  }
}
