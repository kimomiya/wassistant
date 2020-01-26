import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

class Player extends Equatable {
  const Player({@required this.nickname, @required this.accountId});

  /// Player name
  final String nickname;

  /// Player ID
  @JsonKey(name: 'account_id')
  final int accountId;

  @override
  List<Object> get props => [nickname, accountId];
}
