import 'package:data_connection_checker/data_connection_checker.dart';

import '../constants/status_code.dart';
import '../errors/exceptions.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;

  Future<void> checkConnection();
}

class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl(this.connectionChecker);

  final DataConnectionChecker connectionChecker;

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;

  @override
  Future<void> checkConnection() async {
    if (!await connectionChecker.hasConnection) {
      throw ServerException(
        code: StatusCode.networkUnreachable,
        message: 'Network is unreachable.',
      );
    }
  }
}
