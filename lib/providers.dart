import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'view_models/app_view_model.dart';

final providers = <SingleChildStatelessWidget>[
  ..._appProviders,
];

final _appProviders = <SingleChildStatelessWidget>[
  ChangeNotifierProvider(
    create: (_) => AppViewModel(),
  ),
];
