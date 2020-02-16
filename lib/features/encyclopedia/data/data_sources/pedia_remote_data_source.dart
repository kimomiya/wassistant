import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../../../core/enums/pedia_category.dart';
import '../../../../core/enums/realm.dart';
import '../../../../core/env/env.dart';
import '../../../../core/utils/http_helper.dart';
import '../../domain/entities/pedia_data.dart';
import '../../domain/requests/pedia_params.dart';
import 'pedia_data_partition.dart';

abstract class PediaRemoteDataSource {
  static const String prefixURL = 'https://api.worldofwarships.';
  static const String middleURL = '/wows/encyclopedia/';

  static String getURL(Realm realm, PediaCategory category) {
    return prefixURL + realm.value + middleURL + category.value;
  }

  Future<PediaDataInterface> fetchPediaData(
      Realm realm, PediaCategory category, Map<String, dynamic> params);
}

class PediaRemoteDataSourceImpl implements PediaRemoteDataSource {
  const PediaRemoteDataSourceImpl({
    @required this.client,
  });

  final Dio client;

  @override
  Future<PediaDataInterface> fetchPediaData(
      Realm realm, PediaCategory category, Map<String, dynamic> params) async {
    final responseData = await _fetchData(
      path: PediaRemoteDataSource.getURL(realm, category),
      queryParameters: PediaDataPartition.getParams(category, params),
    ) as Map<String, dynamic>;

    return PediaDataPartition.partition(category, responseData);
  }

  Future<dynamic> _fetchData({
    @required String path,
    @required Map<String, dynamic> queryParameters,
  }) async {
    final response = await client.get<Map<String, dynamic>>(
      path,
      queryParameters: queryParameters,
    );

    return mappingValidation(response);
  }
}
