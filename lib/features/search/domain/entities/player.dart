import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Player extends Equatable {
  const Player({
    @required this.nickname,
    @required this.accountId,
  });

  /// Player name
  final String nickname;

  /// Player ID
  final int accountId;

  @override
  List<Object> get props => [nickname, accountId];
}
