import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart' hide NestedScrollView;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../application/search/search_bloc.dart';
import '../../../domain/search/search_failure.dart';
import '../../../injection.dart';
import '../../../shared/constants/error_message.dart';
import '../../../shared/enums/search_type.dart';

class SearchResultTabBarBody extends StatelessWidget {
  const SearchResultTabBarBody(
    this.controller, {
    @required this.query,
  });

  final TabController controller;
  final String query;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: SearchType.values
          .map(
            (type) => BlocProvider(
              create: (_) => locator<SearchBloc>(),
              child: NestedScrollViewInnerScrollPositionKeyWidget(
                Key('Tab${type.index}'),
                _SearchResultTabBarView(type: type, query: query),
              ),
            ),
          )
          .toList(),
      controller: controller,
    );
  }
}

//* Components

class _SearchResultTabBarView extends StatefulWidget {
  const _SearchResultTabBarView({
    @required this.type,
    @required this.query,
  });

  final SearchType type;
  final String query;

  @override
  _SearchResultTabBarViewState createState() {
    return _SearchResultTabBarViewState(type: type, query: query);
  }
}

class _SearchResultTabBarViewState extends State<_SearchResultTabBarView>
    with AutomaticKeepAliveClientMixin {
  _SearchResultTabBarViewState({
    @required this.type,
    @required this.query,
  });

  final SearchType type;
  final String query;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    switch (type) {
      case SearchType.players:
        context.bloc<SearchBloc>().add(SearchEvent.playersSearched(query));
        break;

      case SearchType.clans:
        context.bloc<SearchBloc>().add(SearchEvent.clansSearched(query));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        // Players
        if (type == SearchType.players) {
          return state.maybeMap(
            searchPlayersInProgress: (_) => _loadingIndicator,
            searchPlayersSuccess: (state) => ListView.builder(
              shrinkWrap: true,
              itemCount: state.players.size,
              itemBuilder: (context, index) {
                final player = state.players[index];
                return _buildListItem(
                  id: player.id.getOrElse(''),
                  title: player.nickname,
                  subtitle: player.id.getOrElse(''),
                );
              },
            ),
            searchPlayersFailure: (state) => _buildErrorView(state.failure),
            orElse: () => Container(),
          );
        }

        // Clans
        if (type == SearchType.clans) {
          state.maybeMap(
            searchClansInProgress: (_) => _loadingIndicator,
            searchClansSuccess: (state) => ListView.builder(
              shrinkWrap: true,
              itemCount: state.clans.size,
              itemBuilder: (context, index) {
                return _buildListItem(
                  id: state.clans[index].id.getOrElse(''),
                  title: state.clans[index].tag,
                  subtitle: state.clans[index].name,
                );
              },
            ),
            searchClansFailure: (state) => _buildErrorView(state.failure),
            orElse: () {},
          );
        }

        return Container();
      },
    );
  }

  //* Components

  Widget get _loadingIndicator => Container(
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );

  Widget _buildErrorView(SearchFailure failure) {
    final message = failure.map(
      networkUnreachable: (_) => ErrorMessage.networkUnreachable,
      notEnoughSearchLength: (_) => ErrorMessage.invalidSearch,
      noContent: (_) => ErrorMessage.noSearchResults,
      serverError: (_) => ErrorMessage.fatalError,
    );

    final widgets = <Widget>[
      Icon(
        Icons.search,
        size: 200.h.toDouble(),
        color: Colors.grey,
      ),
      SizedBox(height: 40.h.toDouble()),
      Text(
        message,
        style: TextStyle(
          color: Colors.grey[700],
          fontSize: 36.sp.toDouble(),
        ),
        textAlign: TextAlign.center,
      ),
    ];

    return widgets.toColumn().padding(horizontal: 48.w.toDouble());
  }

  Widget _buildListItem({
    @required String id,
    @required String title,
    @required String subtitle,
  }) {
    final widgets = <Widget>[
      ListTile(
        leading: Icon(
          type == SearchType.players ? Icons.person : Icons.flag,
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.keyboard_arrow_right),
        // TODO(hiei): navigating to detail page
        onTap: () => print(id),
      ),
      Container().decorated(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.3,
          ),
        ),
      ),
    ];
    return widgets.toColumn();
  }
}
