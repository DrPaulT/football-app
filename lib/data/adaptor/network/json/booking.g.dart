// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Booking _$BookingFromJson(Map<String, dynamic> json) => Booking(
      minute: json['minute'] as int,
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
      player: Player.fromJson(json['player'] as Map<String, dynamic>),
      card: json['card'] as String,
    );

Map<String, dynamic> _$BookingToJson(Booking instance) => <String, dynamic>{
      'minute': instance.minute,
      'team': instance.team.toJson(),
      'player': instance.player.toJson(),
      'card': instance.card,
    };
