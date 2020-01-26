import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:connectivity/connectivity.dart';
import 'package:wassistant/core/network/network_info.dart';

class MockConnectivity extends Mock implements Connectivity {}

void main() {
  MockConnectivity mockConnectivity;
  NetworkInfoImpl networkInfo;

  setUp(() {
    mockConnectivity = MockConnectivity();
    networkInfo = NetworkInfoImpl(mockConnectivity);
  });

  group(
    'NetworkInfo.isConnected',
    () {
      test(
        'should forward the call to Connectivity.checkConnectivity',
        () async {
          final tHasConnectionFuture = Future.value(
            ConnectivityResult.mobile,
          );

          when(
            mockConnectivity.checkConnectivity(),
          ).thenAnswer(
            (_) => tHasConnectionFuture,
          );

          final result = await networkInfo.isConnected;

          verify(mockConnectivity.checkConnectivity());
          expect(result, true);
        },
      );
    },
  );
}
