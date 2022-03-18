import 'package:json_annotation/json_annotation.dart';

part 'score_pair.g.dart';

@JsonSerializable()
class ScorePair {
  ScorePair({this.homeTeam, this.awayTeam});

  int? homeTeam;
  int? awayTeam;

  factory ScorePair.fromJson(Map<String, dynamic> json) =>
      _$ScorePairFromJson(json);

  Map<String, dynamic> toJson() => _$ScorePairToJson(this);
}

//                 {
//                     "homeTeam": 0,
//                     "awayTeam": 1
//                 },
