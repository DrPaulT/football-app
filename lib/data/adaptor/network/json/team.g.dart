// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      id: json['id'] as int,
      name: json['name'] as String,
      coach: json['coach'] == null
          ? null
          : Coach.fromJson(json['coach'] as Map<String, dynamic>),
      captain: json['captain'] == null
          ? null
          : Player.fromJson(json['captain'] as Map<String, dynamic>),
      lineup: (json['lineup'] as List<dynamic>?)
          ?.map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
      bench: (json['bench'] as List<dynamic>?)
          ?.map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'coach': instance.coach?.toJson(),
      'captain': instance.captain?.toJson(),
      'lineup': instance.lineup?.map((e) => e.toJson()).toList(),
      'bench': instance.bench?.map((e) => e.toJson()).toList(),
    };
