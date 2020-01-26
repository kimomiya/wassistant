import 'package:connectivity/connectivity.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  const NetworkInfoImpl(this._connectivity);

  final Connectivity _connectivity;

  @override
  Future<bool> get isConnected => _connectivity
      .checkConnectivity()
      .then((result) => result != ConnectivityResult.none);
}
