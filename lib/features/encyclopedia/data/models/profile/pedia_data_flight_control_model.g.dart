// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedia_data_flight_control_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PediaDataFlightControlModel _$PediaDataFlightControlModelFromJson(
    Map<String, dynamic> json) {
  return PediaDataFlightControlModel(
    bomberSquadrons: json['bomber_squadrons'] as num,
    fighterSquadrons: json['fighter_squadrons'] as num,
    flightControlId: json['flight_control_id'] as num,
    flightControlIdStr: json['flight_control_id_str'] as String,
    torpedoSquadrons: json['torpedo_squadrons'] as num,
  );
}

Map<String, dynamic> _$PediaDataFlightControlModelToJson(
        PediaDataFlightControlModel instance) =>
    <String, dynamic>{
      'bomber_squadrons': instance.bomberSquadrons,
      'fighter_squadrons': instance.fighterSquadrons,
      'flight_control_id': instance.flightControlId,
      'flight_control_id_str': instance.flightControlIdStr,
      'torpedo_squadrons': instance.torpedoSquadrons,
    };
