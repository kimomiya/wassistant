import 'package:flutter_test/flutter_test.dart';
import 'package:wassistant/core/enums/realm.dart';
import 'package:wassistant/core/env/env.dart';

void main() {
  Env env;

  setUp(() {
    env = Env();
  });

  group(
    'baseURL',
    () {
      test(
        'should return a concatenated string in Asia realm',
        () {
          final expectedURL = 'https://api.worldofwarships.${Realm.asia.value}';
          expect(env.baseURL, expectedURL);
        },
      );

      test(
        'should return a concatenated string in specified realm '
        'when changeRealm has be called',
        () {
          const expectedRealm = Realm.eu;

          env.changeRealm(expectedRealm);

          final expectedURL =
              'https://api.worldofwarships.${expectedRealm.value}';
          expect(env.baseURL, expectedURL);
        },
      );
    },
  );
}
