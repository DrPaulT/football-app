import 'package:football_app/data/adaptor/network/json/player.dart';
import 'package:football_app/data/adaptor/network/json/team.dart';
import 'package:json_annotation/json_annotation.dart';

part 'goal.g.dart';

@JsonSerializable(explicitToJson: true)
class Goal {
  Goal({
    required this.minute,
    required this.type,
    required this.team,
    required this.scorer,
    required this.assist,
  });

  int minute;
  String type;
  Team team;
  Player scorer;
  Player assist;

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);

  Map<String, dynamic> toJson() => _$GoalToJson(this);
}

//                 {
//                     "minute": 23,
//                     "type": "REGULAR",
//                     "team": {
//                         "id": 6684,
//                         "name": "SC Internacional"
//                     },
//                     "scorer": {
//                         "id": 1582,
//                         "name": "Patrick Nascimento"
//                     },
//                     "assist": {
//                         "id": 1593,
//                         "name": "Rossi"
//                     }
//                 }
