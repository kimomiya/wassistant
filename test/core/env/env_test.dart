import 'package:flutter_test/flutter_test.dart';
import 'package:wassistant/core/enums/realm.dart';
import 'package:wassistant/core/env/env.dart';

void main() {
  Env env;

  setUp(() {
    env = Env();
  });

  group(
    'applicaionId',
    () {
      test(
        'should be a non-empty String',
        () {
          expect(env.applicaionId.isNotEmpty, true);
        },
      );
    },
  );

  group(
    'searchHistoryStorageLimit',
    () {
      test(
        'should be a positive number',
        () {
          expect(env.searchHistoryStorageLimit > 0, true);
        },
      );
    },
  );

  group(
    'baseURLForWows',
    () {
      test(
        'should return a concatenated string in Asia realm',
        () {
          expect(
            env.baseURLForWows,
            'https://api.worldofwarships.${Realm.asia.value}/wows/',
          );
        },
      );

      test(
        'should return a concatenated string in specified realm '
        'when changeRealm has be called',
        () {
          const expectedRealm = Realm.eu;

          env.changeRealm(expectedRealm);

          expect(
            env.baseURLForWows,
            'https://api.worldofwarships.${expectedRealm.value}/wows/',
          );
        },
      );
    },
  );
}
