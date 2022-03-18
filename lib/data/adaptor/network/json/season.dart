import 'package:json_annotation/json_annotation.dart';

part 'season.g.dart';

@JsonSerializable()
class Season {
  Season({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.currentMatchday,
    this.availableStages,
  });

  int id;
  String startDate;
  String endDate;
  int currentMatchday;
  List<String>? availableStages;

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonToJson(this);
}

//             {
//                 "id": 15,
//                 "startDate": "2018-04-14",
//                 "endDate": "2018-12-02",
//                 "currentMatchday": 20,
//                 "availableStages": [
//                     "REGULAR_SEASON"
//                 ]
//             },
