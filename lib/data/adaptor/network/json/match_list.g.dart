// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchList _$MatchListFromJson(Map<String, dynamic> json) => MatchList(
      count: json['count'] as int,
      filters: Filters.fromJson(json['filters'] as Map<String, dynamic>),
      matches: (json['matches'] as List<dynamic>)
          .map((e) => Match.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MatchListToJson(MatchList instance) => <String, dynamic>{
      'count': instance.count,
      'filters': instance.filters.toJson(),
      'matches': instance.matches.map((e) => e.toJson()).toList(),
    };
