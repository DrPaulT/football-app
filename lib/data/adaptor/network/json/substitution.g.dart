// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substitution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Substitution _$SubstitutionFromJson(Map<String, dynamic> json) => Substitution(
      minute: json['minute'] as int,
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
      playerOut: Player.fromJson(json['playerOut'] as Map<String, dynamic>),
      playerIn: Player.fromJson(json['playerIn'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubstitutionToJson(Substitution instance) =>
    <String, dynamic>{
      'minute': instance.minute,
      'team': instance.team.toJson(),
      'playerOut': instance.playerOut.toJson(),
      'playerIn': instance.playerIn.toJson(),
    };
