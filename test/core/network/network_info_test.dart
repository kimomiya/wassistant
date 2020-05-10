import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/infrastructure/core/network_info.dart';

class MockDataConnectionChecker extends Mock implements DataConnectionChecker {}

void main() {
  MockDataConnectionChecker mockDataConnectionChecker;
  NetworkInfoImpl networkInfo;

  setUp(() {
    mockDataConnectionChecker = MockDataConnectionChecker();
    networkInfo = NetworkInfoImpl(mockDataConnectionChecker);
  });

  group(
    'NetworkInfo.isConnected',
    () {
      test(
        'should forward the call to DataConnectionChecker.hasConnection',
        () async {
          when(
            mockDataConnectionChecker.hasConnection,
          ).thenAnswer(
            (_) async => true,
          );

          final result = await networkInfo.isConnected;

          verify(mockDataConnectionChecker.hasConnection);
          expect(result, true);
        },
      );
    },
  );
}
