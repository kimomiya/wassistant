import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:wassistant/repository/api_client.dart';
import 'package:wassistant/repository/palyer_repository.dart';
import 'package:wassistant/view_models/app_view_model.dart';
import 'package:wassistant/view_models/search_view_model.dart';

final providers = <SingleChildWidget>[
  ..._appProviders,
  ..._independentProviders,
  ..._dependentProviders,
];

final _appProviders = <SingleChildWidget>[
  ChangeNotifierProvider(
    create: (_) => AppViewModel(),
  ),
];

final _independentProviders = <SingleChildWidget>[
  Provider(
    create: (_) => ApiClient(),
  ),
];

final _dependentProviders = <SingleChildWidget>[
  ProxyProvider<ApiClient, PlayerRepository>(
    update: (_, apiClient, __) => PlayerRepository(apiClient),
  ),
  ProxyProvider<PlayerRepository, SearchViewModel>(
    update: (_, playerRepository, __) => SearchViewModel(playerRepository),
  ),
];
