import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/errors/exceptions.dart';
import 'package:wassistant/core/network/network_info.dart';

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

  group(
    'NetworkInfo.checkConnection',
    () {
      test(
        'should forward the call to DataConnectionChecker.hasConnection',
        () async {
          when(
            mockDataConnectionChecker.hasConnection,
          ).thenAnswer(
            (_) async => true,
          );

          await networkInfo.checkConnection();

          verify(mockDataConnectionChecker.hasConnection);
        },
      );

      test(
        'should throw ServerException if there is no connection',
        () async {
          when(
            mockDataConnectionChecker.hasConnection,
          ).thenAnswer(
            (_) async => false,
          );

          final call = networkInfo.checkConnection;

          expect(() => call(), throwsA(isA<ServerException>()));
        },
      );
    },
  );
}
