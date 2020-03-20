import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wassistant/core/errors/failures.dart';
import 'package:wassistant/features/search/domain/entities/clan.dart';
import 'package:wassistant/features/search/domain/repositories/search_repository.dart';
import 'package:wassistant/features/search/domain/usecase/search_Clans.dart';

class MockSearchRepository extends Mock implements SearchRepository {}

void main() {
  SearchClans usecase;
  MockSearchRepository mockSearchRepository;

  setUp(() {
    mockSearchRepository = MockSearchRepository();
    usecase = SearchClans(mockSearchRepository);
  });

  const tSearch = 'horta';
  const tClans = <Clan>[
    Clan(
      clanId: 2000018586,
      createdAt: 1554897532,
      membersCount: 4,
      name: 'NOTEmi',
      tag: 'NOTE',
    ),
    Clan(
      clanId: 2000016337,
      createdAt: 1533994576,
      membersCount: 43,
      name: 'Rebirth of Type-Moon&NOTES',
      tag: 'TPM',
    ),
  ];

  group(
    'searchClans',
    () {
      test(
        'should get a list of Clan entity from the repository',
        () async {
          when(
            mockSearchRepository.searchClans(any),
          ).thenAnswer(
            (_) async => Right(tClans),
          );

          final result = await usecase(
            const SearchClansParams(search: tSearch),
          );

          expect(
            result,
            equals(Right<Failure, List<Clan>>(tClans)),
          );
          verify(mockSearchRepository.searchClans(tSearch));
          verifyNoMoreInteractions(mockSearchRepository);
        },
      );
    },
  );
}
