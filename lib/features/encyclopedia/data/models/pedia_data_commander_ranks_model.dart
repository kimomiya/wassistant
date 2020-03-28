import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/pedia_data.dart';

part 'pedia_data_commander_ranks_model.g.dart';

class PediaCommanderRanks extends PediaDataInterface {
  PediaCommanderRanks({
    @required this.content,
  });

  Map<String, List<PediaCommanderRanksContent>> content;

  static PediaCommanderRanks fromJson(Map<String, dynamic> json) {
    Map<String, List<PediaCommanderRanksContent>> content;
    json.forEach((_nation, _contents) => {
          (_contents as List<Map<String, dynamic>>).forEach((_content) => {
                content[_nation]
                    .add(PediaCommanderRanksContent.fromJson(_content))
              }),
        });
    return PediaCommanderRanks(content: content);
  }

  static Map<String, dynamic> toJson(PediaCommanderRanks instance) {
    Map<String, dynamic> json;
    List<Map<String, dynamic>> list;
    instance.content.forEach((_nation, _contents) => {
          (_contents as List<PediaCommanderRanksContent>)
              .forEach((_content) => {list.add(_content.toJson())}),
          json[_nation] = list,
          list.clear(),
        });
    return json;
  }
}

@JsonSerializable()
class PediaCommanderRanksContent extends Equatable {
  PediaCommanderRanksContent({
    @required this.experience,
    @required this.name,
    @required this.rank,
    @required this.names,
  });

  // Experience
  @JsonKey(name: 'experience')
  final num experience;
  // Name. ??? this is always null
  @JsonKey(name: 'name')
  final String name;
  // Rank
  @JsonKey(name: 'rank')
  final num rank;
  // real name here
  @JsonKey(name: 'names')
  final Map<String, String> names;

  static PediaCommanderRanksContent fromJson(Map<String, dynamic> json) {
    return _$PediaCommanderRanksContentFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PediaCommanderRanksContentToJson(this);
  }

  @override
  List<Object> get props => [
        experience,
        name,
        rank,
        names,
      ];
}
