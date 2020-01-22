import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:wassistant/repository/api_client.dart';
import 'package:wassistant/repository/palyer_repository.dart';
import 'package:wassistant/view_models/app_view_model.dart';
import 'package:wassistant/view_models/components/search_view_model.dart';

final providers = <SingleChildStatelessWidget>[
  ..._appProviders,
  ..._independentProviders,
  ..._dependentProviders,
];

final _appProviders = <SingleChildStatelessWidget>[
  ChangeNotifierProvider(
    create: (_) => AppViewModel(),
  ),
];

final _independentProviders = <SingleChildStatelessWidget>[
  Provider(
    create: (_) => ApiClient(),
  ),
];

final _dependentProviders = <SingleChildStatelessWidget>[
  ProxyProvider<ApiClient, PlayerRepository>(
    update: (_, apiClient, __) => PlayerRepository(apiClient),
  ),
  ProxyProvider<PlayerRepository, SearchViewModel>(
    update: (_, playerRepository, __) => SearchViewModel(playerRepository),
  ),
];
