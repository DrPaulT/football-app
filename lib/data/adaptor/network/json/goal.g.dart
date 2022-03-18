// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Goal _$GoalFromJson(Map<String, dynamic> json) => Goal(
      minute: json['minute'] as int,
      type: json['type'] as String,
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
      scorer: Player.fromJson(json['scorer'] as Map<String, dynamic>),
      assist: Player.fromJson(json['assist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GoalToJson(Goal instance) => <String, dynamic>{
      'minute': instance.minute,
      'type': instance.type,
      'team': instance.team.toJson(),
      'scorer': instance.scorer.toJson(),
      'assist': instance.assist.toJson(),
    };
