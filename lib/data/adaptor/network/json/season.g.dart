// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Season _$SeasonFromJson(Map<String, dynamic> json) => Season(
      id: json['id'] as int,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      currentMatchday: json['currentMatchday'] as int,
      availableStages: (json['availableStages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SeasonToJson(Season instance) => <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'currentMatchday': instance.currentMatchday,
      'availableStages': instance.availableStages,
    };
