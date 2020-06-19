import 'dart:math';

import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart' hide NestedScrollView;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wassistant/features/encyclopedia/domain/enums/pedia_result_type.dart';
import 'package:wassistant/features/encyclopedia/presentation/bloc/pedia_bloc.dart';
import 'package:wassistant/injection_container.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({Key key, this.title}) : super(key: key);

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

//* SearchDelegate

class _SearchDelegate extends SearchDelegate<String> {
  final _bloc = locator<PediaBloc>();

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
      _bloc.add(SearchPediaHistoryCached(search: query));
      return _SearchResultView(query: query);
    }

    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    _bloc.add(SearchPediaSuggestionsLoaded(search: query));

    return BlocBuilder<PediaBloc, PediaState>(
      builder: (context, state) {
        if (state is PediaSuggestionsLoadSuccess) {
          final suggestions = state.suggestions.history;
          return ListView.builder(
            itemCount: suggestions.length,
            itemBuilder: (_, index) => ListTile(
              leading: Icon(Icons.history),
              title: Text(suggestions[index]),
              trailing: Transform.rotate(
                angle: -pi / 4,
                child: Icon(Icons.arrow_upward),
              ),
              onTap: () {
                // set tapped text to query and do search
                query = suggestions[index];
                showResults(context);
              },
            ),
          );
        }

        return Container();
      },
      bloc: _bloc,
    );
  }
}

//* Components

class _SearchResultView extends StatefulWidget {
  const _SearchResultView({
    Key key,
    @required this.query,
  }) : super(key: key);

  final String query;

  @override
  _SearchResultViewState createState() => _SearchResultViewState(query);
}

class _SearchResultViewState extends State<_SearchResultView>
    with SingleTickerProviderStateMixin {
  _SearchResultViewState(this.query);

  final String query;

  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: PediaResultType.values.length,
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
        final theme = Theme.of(context);

        return <Widget>[
          SliverPersistentHeader(
            delegate: _SliverHeaderDelegate(
              tabBar: TabBar(
                tabs: PediaResultType.values
                    .map((type) => Tab(text: type.text))
                    .toList(),
                controller: _tabController,
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
          ),
        ];
      },
      body: TabBarView(
        children: PediaResultType.values
            .map(
              (type) => BlocProvider(
                create: (_) => locator<PediaBloc>(),
                child: NestedScrollViewInnerScrollPositionKeyWidget(
                  Key('Tab${type.index}'),
                  _SearchResultTabBarView(
                    type: type,
                    query: query,
                  ),
                ),
              ),
            )
            .toList(),
        controller: _tabController,
      ),
    );
  }
}

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

class _SearchResultTabBarView extends StatefulWidget {
  const _SearchResultTabBarView({
    Key key,
    @required this.type,
    @required this.query,
  }) : super(key: key);

  final PediaResultType type;
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

  final PediaResultType type;
  final String query;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    switch (type) {
      case PediaResultType.achievements:
        context
            .bloc<PediaBloc>()
            .add(SearchPediaAchievementsFound(search: query));
        break;

      case PediaResultType.commanders:
        context
            .bloc<PediaBloc>()
            .add(SearchPediaCommandersFound(search: query));
        break;

      case PediaResultType.commanderSkills:
        context
            .bloc<PediaBloc>()
            .add(SearchPediaCommanderSkillsFound(search: query));
        break;

      case PediaResultType.commanderRanks:
        context
            .bloc<PediaBloc>()
            .add(SearchPediaCommanderRanksFound(search: query));
        break;

      case PediaResultType.modules:
        context.bloc<PediaBloc>().add(SearchPediaModulesFound(search: query));
        break;

      case PediaResultType.ships:
        context.bloc<PediaBloc>().add(SearchPediaShipsFound(search: query));
        break;

      case PediaResultType.shipParams:
        context
            .bloc<PediaBloc>()
            .add(SearchPediaShipParamsFound(search: query));
        break;

      case PediaResultType.info:
        context.bloc<PediaBloc>().add(SearchPediaInfoFound(search: query));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocBuilder<PediaBloc, PediaState>(
      builder: (context, state) {
        // Achievements
        if (type == PediaResultType.achievements) {
          if (state is AchievementsFindInProgress) {
            return _loadingIndicator;
          }

          if (state is AchievementsFindSuccess) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.achievements.length,
              itemBuilder: (context, index) {
                final achievement = state.achievements[index];
                return _buildListItem(
                  id: achievement?.achievementId.hashCode,
                  title: achievement?.name,
                  subtitle: achievement?.description,
                );
              },
            );
          }

          if (state is AchievementsFindFailure) {
            return _buildErrorView(state.message);
          }
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

  Widget _buildErrorView(String message) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 48.w.toDouble()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
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
        ],
      ),
    );
  }

  Widget _buildListItem({
    @required int id,
    @required String title,
    @required String subtitle,
  }) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(
            type == PediaResultType.achievements ? Icons.person : Icons.flag,
          ),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: Icon(Icons.keyboard_arrow_right),
          // TODO(hiei): navigating to detail page
          onTap: () => print(id),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 0.3,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
