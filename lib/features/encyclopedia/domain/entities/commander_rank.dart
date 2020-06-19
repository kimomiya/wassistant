import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class PediaCommanderRank extends Equatable {
  const PediaCommanderRank({
    @required this.commonwealth,
    @required this.europe,
    @required this.italy,
    @required this.usa,
    @required this.panAsia,
    @required this.france,
    @required this.ussr,
    @required this.germany,
    @required this.uk,
    @required this.japan,
    @required this.panAmerica,
  });

  final List<PediaCommanderRanksContent> commonwealth;
  final List<PediaCommanderRanksContent> europe;
  final List<PediaCommanderRanksContent> italy;
  final List<PediaCommanderRanksContent> usa;
  final List<PediaCommanderRanksContent> panAsia;
  final List<PediaCommanderRanksContent> france;
  final List<PediaCommanderRanksContent> ussr;
  final List<PediaCommanderRanksContent> germany;
  final List<PediaCommanderRanksContent> uk;
  final List<PediaCommanderRanksContent> japan;
  final List<PediaCommanderRanksContent> panAmerica;

  @override
  List<Object> get props => [
        commonwealth,
        europe,
        italy,
        usa,
        panAsia,
        france,
        ussr,
        germany,
        uk,
        japan,
        panAmerica,
      ];
}

class PediaCommanderRanksContent extends Equatable {
  const PediaCommanderRanksContent({
    @required this.experience,
    @required this.name,
    @required this.rank,
    @required this.names,
  });

  // Experience
  final num experience;
  // Name. ??? this is always null
  final String name;
  // Rank
  final num rank;
  // real name here
  final Map<String, String> names;

  @override
  List<Object> get props => [
        experience,
        name,
        rank,
        names,
      ];
}
