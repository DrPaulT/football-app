// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Match _$MatchFromJson(Map<String, dynamic> json) => Match(
      id: json['id'] as int,
      competition: json['competition'] == null
          ? null
          : Competition.fromJson(json['competition'] as Map<String, dynamic>),
      season: Season.fromJson(json['season'] as Map<String, dynamic>),
      utcDate: json['utcDate'] as String,
      status: json['status'] as String,
      attendance: json['attendance'] as String?,
      matchday: json['matchday'] as int,
      stage: json['stage'] as String,
      group: json['group'] as String?,
      lastUpdated: json['lastUpdated'] as String,
      homeTeam: Team.fromJson(json['homeTeam'] as Map<String, dynamic>),
      awayTeam: Team.fromJson(json['awayTeam'] as Map<String, dynamic>),
      score: Score.fromJson(json['score'] as Map<String, dynamic>),
      goals: (json['goals'] as List<dynamic>?)
          ?.map((e) => Goal.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookings: (json['bookings'] as List<dynamic>?)
          ?.map((e) => Booking.fromJson(e as Map<String, dynamic>))
          .toList(),
      substitutions: (json['substitutions'] as List<dynamic>?)
          ?.map((e) => Substitution.fromJson(e as Map<String, dynamic>))
          .toList(),
      referees: (json['referees'] as List<dynamic>)
          .map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MatchToJson(Match instance) => <String, dynamic>{
      'id': instance.id,
      'competition': instance.competition?.toJson(),
      'season': instance.season.toJson(),
      'utcDate': instance.utcDate,
      'status': instance.status,
      'attendance': instance.attendance,
      'matchday': instance.matchday,
      'stage': instance.stage,
      'group': instance.group,
      'lastUpdated': instance.lastUpdated,
      'homeTeam': instance.homeTeam.toJson(),
      'awayTeam': instance.awayTeam.toJson(),
      'score': instance.score.toJson(),
      'goals': instance.goals?.map((e) => e.toJson()).toList(),
      'bookings': instance.bookings?.map((e) => e.toJson()).toList(),
      'substitutions': instance.substitutions?.map((e) => e.toJson()).toList(),
      'referees': instance.referees.map((e) => e.toJson()).toList(),
    };
