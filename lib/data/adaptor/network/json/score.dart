import 'package:football_app/data/adaptor/network/json/score_pair.dart';
import 'package:json_annotation/json_annotation.dart';

part 'score.g.dart';

@JsonSerializable(explicitToJson: true)
class Score {
  Score({
    required this.winner,
    required this.duration,
    required this.fullTime,
    required this.halfTime,
    required this.extraTime,
    required this.penalties,
  });

  String winner;
  String duration;
  ScorePair fullTime;
  ScorePair halfTime;
  ScorePair extraTime;
  ScorePair penalties;

  factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);

  Map<String, dynamic> toJson() => _$ScoreToJson(this);
}

//             {
//                 "winner": "AWAY_TEAM",
//                 "duration": "REGULAR",
//                 "fullTime": {
//                     "homeTeam": 0,
//                     "awayTeam": 1
//                 },
//                 "halfTime": {
//                     "homeTeam": 0,
//                     "awayTeam": 1
//                 },
//                 "extraTime": {
//                     "homeTeam": null,
//                     "awayTeam": null
//                 },
//                 "penalties": {
//                     "homeTeam": null,
//                     "awayTeam": null
//                 }
//             },
