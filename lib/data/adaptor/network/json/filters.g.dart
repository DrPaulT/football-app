// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Filters _$FiltersFromJson(Map<String, dynamic> json) => Filters(
      status:
          (json['status'] as List<dynamic>?)?.map((e) => e as String).toList(),
      dateFrom: json['dateFrom'] as String?,
      dateTo: json['dateTo'] as String?,
    );

Map<String, dynamic> _$FiltersToJson(Filters instance) => <String, dynamic>{
      'status': instance.status,
      'dateFrom': instance.dateFrom,
      'dateTo': instance.dateTo,
    };
