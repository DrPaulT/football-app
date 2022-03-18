// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Score _$ScoreFromJson(Map<String, dynamic> json) => Score(
      winner: json['winner'] as String,
      duration: json['duration'] as String,
      fullTime: ScorePair.fromJson(json['fullTime'] as Map<String, dynamic>),
      halfTime: ScorePair.fromJson(json['halfTime'] as Map<String, dynamic>),
      extraTime: ScorePair.fromJson(json['extraTime'] as Map<String, dynamic>),
      penalties: ScorePair.fromJson(json['penalties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScoreToJson(Score instance) => <String, dynamic>{
      'winner': instance.winner,
      'duration': instance.duration,
      'fullTime': instance.fullTime.toJson(),
      'halfTime': instance.halfTime.toJson(),
      'extraTime': instance.extraTime.toJson(),
      'penalties': instance.penalties.toJson(),
    };
