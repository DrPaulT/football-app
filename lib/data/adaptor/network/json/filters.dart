import 'package:json_annotation/json_annotation.dart';

part 'filters.g.dart';

@JsonSerializable()
class Filters {
  Filters({this.status, this.dateFrom, this.dateTo});

  List<String>? status;
  String? dateFrom;
  String? dateTo;

  factory Filters.fromJson(Map<String, dynamic> json) =>
      _$FiltersFromJson(json);

  Map<String, dynamic> toJson() => _$FiltersToJson(this);
}

//     "filters": {
//         "status":["FINISHED"],
//         "dateFrom": "2018-08-23",
//         "dateTo": "2018-08-23"
//     }
