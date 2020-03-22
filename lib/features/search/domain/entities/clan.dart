import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Clan extends Equatable {
  const Clan({
    @required this.clanId,
    @required this.createdAt,
    @required this.membersCount,
    @required this.name,
    @required this.tag,
  });

  /// Clan id
  final int clanId;

  /// Clan creation date
  final int createdAt;

  /// Number of clan members
  final int membersCount;

  /// Clan name
  final String name;

  /// Clan tag
  final String tag;

  @override
  List<Object> get props => [
        clanId,
        createdAt,
        membersCount,
        name,
        tag,
      ];
}
