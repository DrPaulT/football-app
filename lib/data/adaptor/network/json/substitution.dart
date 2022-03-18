import 'package:football_app/data/adaptor/network/json/player.dart';
import 'package:football_app/data/adaptor/network/json/team.dart';
import 'package:json_annotation/json_annotation.dart';

part 'substitution.g.dart';

@JsonSerializable(explicitToJson: true)
class Substitution {
  Substitution({
    required this.minute,
    required this.team,
    required this.playerOut,
    required this.playerIn,
  });

  int minute;
  Team team;
  Player playerOut;
  Player playerIn;

  factory Substitution.fromJson(Map<String, dynamic> json) =>
      _$SubstitutionFromJson(json);

  Map<String, dynamic> toJson() => _$SubstitutionToJson(this);
}

//                 {
//                     "minute": 59,
//                     "team": {
//                         "id": 1777,
//                         "name": "EC Bahia"
//                     },
//                     "playerOut": {
//                         "id": 1391,
//                         "name": "Edigar Junio"
//                     },
//                     "playerIn": {
//                         "id": 1383,
//                         "name": "Regis"
//                     }
//                 },
