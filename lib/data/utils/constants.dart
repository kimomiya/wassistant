import 'package:wassistant/core/env/env.dart';

const applicationId = Env.applicaionId;

String get baseURL {
  return 'https://api.worldofwarships.${Env.realm}/wows/';
}
