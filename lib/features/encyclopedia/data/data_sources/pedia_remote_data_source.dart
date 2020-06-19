import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:wassistant/core/env/env.dart';

import '../../../../core/enums/pedia_category.dart';
import '../../../../core/enums/realm.dart';
import '../../../../core/utils/http_helper.dart';
import '../models/pedia_json_data.dart';
import 'pedia_data_partition.dart';

abstract class PediaRemoteDataSource {
  static const String prefixURL = 'https://api.worldofwarships.';
  static const String middleURL = '/wows/encyclopedia/';

  static String getURL(Realm realm, PediaCategory category) {
    return prefixURL + realm.value + middleURL + category.value;
  }

  Future<PediaJsonData> fetchPediaData(
      Realm realm, PediaCategory category, Map<String, dynamic> params);
}

class PediaRemoteDataSourceImpl implements PediaRemoteDataSource {
  const PediaRemoteDataSourceImpl({
    @required this.locator,
    @required this.client,
  });

  final GetIt locator;
  final Dio client;

  @override
  Future<PediaJsonData> fetchPediaData(
      Realm realm, PediaCategory category, Map<String, dynamic> params) async {
    final env = locator<Env>();
    final query = PediaDataPartition.getParams(category, params);
    query['application_id'] = env.applicationId;
    query['language'] = env.language;
    final Map<String, dynamic> responseData = await _fetchData(
      path: PediaRemoteDataSource.getURL(realm, category),
      queryParameters: query,
    ) as Map<String, dynamic>;

    return PediaDataPartition.partition(category, responseData);
  }

  Future<dynamic> _fetchData({
    @required String path,
    @required Map<String, dynamic> queryParameters,
  }) async {
    final Response<Map<String, dynamic>> response =
        await client.get<Map<String, dynamic>>(
      path,
      queryParameters: queryParameters,
    );

    return mappingValidation(response);
  }
}
