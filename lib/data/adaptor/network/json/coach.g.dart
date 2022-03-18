// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coach _$CoachFromJson(Map<String, dynamic> json) => Coach(
      id: json['id'] as int,
      name: json['name'] as String,
      countryOfBirth: json['countryOfBirth'] as String,
      nationality: json['nationality'] as String,
    );

Map<String, dynamic> _$CoachToJson(Coach instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'countryOfBirth': instance.countryOfBirth,
      'nationality': instance.nationality,
    };
