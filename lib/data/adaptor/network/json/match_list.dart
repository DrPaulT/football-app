import 'package:football_app/data/adaptor/network/json/filters.dart';
import 'package:football_app/data/adaptor/network/json/match.dart';
import 'package:json_annotation/json_annotation.dart';

part 'match_list.g.dart';

@JsonSerializable(explicitToJson: true)
class MatchList {
  MatchList({
    required this.count,
    required this.filters,
    required this.matches,
  });

  int count;
  Filters filters;
  List<Match> matches;

  factory MatchList.fromJson(Map<String, dynamic> json) =>
      _$MatchListFromJson(json);

  Map<String, dynamic> toJson() => _$MatchListToJson(this);
}

// {
//     "count": 6,
//     "filters": {
//         "dateFrom": "2018-08-23",
//         "dateTo": "2018-08-23"
//     },
//     "matches": [...]
// }
