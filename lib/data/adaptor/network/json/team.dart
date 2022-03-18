import 'package:football_app/data/adaptor/network/json/coach.dart';
import 'package:football_app/data/adaptor/network/json/player.dart';
import 'package:json_annotation/json_annotation.dart';

part 'team.g.dart';

@JsonSerializable(explicitToJson: true)
class Team {
  Team({
    required this.id,
    required this.name,
    this.coach,
    this.captain,
    this.lineup,
    this.bench,
  });

  int id;
  String name;
  Coach? coach;
  Player? captain;
  List<Player>? lineup;
  List<Player>? bench;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);
}

//             {
//                 "id": 1777,
//                 "name": "EC Bahia",
//                 "coach": {
//                     "id": 11142,
//                     "name": "Enderson Moreira",
//                     "countryOfBirth": "Brazil",
//                     "nationality": "Brazil"
//                 },
//                 "captain": {
//                     "id": 1370,
//                     "name": "Tiago Pagnussat",
//                     "shirtNumber": 3
//                 },
//                 "lineup": [
//                     {
//                         "id": 1370,
//                         "name": "Tiago Pagnussat",
//                         "position": "Defender",
//                         "shirtNumber": 3
//                     },
//                     {
//                         "id": 38734,
//                         "name": "Gilberto",
//                         "position": "Attacker",
//                         "shirtNumber": 9
//                     },
//                     {
//                         "id": 1368,
//                         "name": "Lucas Fonseca",
//                         "position": "Defender",
//                         "shirtNumber": 28
//                     },
//                     {
//                         "id": 1380,
//                         "name": "Zé Rafael",
//                         "position": "Midfielder",
//                         "shirtNumber": 10
//                     },
//                     {
//                         "id": 1334,
//                         "name": "Bruno",
//                         "position": "Defender",
//                         "shirtNumber": 22
//                     },
//                     {
//                         "id": 1386,
//                         "name": "Léo",
//                         "position": "Midfielder",
//                         "shirtNumber": 6
//                     },
//                     {
//                         "id": 1365,
//                         "name": "Anderson",
//                         "position": "Goalkeeper",
//                         "shirtNumber": 33
//                     },
//                     {
//                         "id": 1382,
//                         "name": "Elton",
//                         "position": "Midfielder",
//                         "shirtNumber": 17
//                     },
//                     {
//                         "id": 1381,
//                         "name": "Vinicius",
//                         "position": "Midfielder",
//                         "shirtNumber": 29
//                     },
//                     {
//                         "id": 1391,
//                         "name": "Edigar Junio",
//                         "position": "Attacker",
//                         "shirtNumber": 11
//                     },
//                     {
//                         "id": 1390,
//                         "name": "Gregore",
//                         "position": "Midfielder",
//                         "shirtNumber": 26
//                     }
//                 ],
//                 "bench": [
//                     {
//                         "id": 1374,
//                         "name": "Douglas Grolli",
//                         "position": "Defender",
//                         "shirtNumber": 13
//                     },
//                     {
//                         "id": 1385,
//                         "name": "Élber",
//                         "position": "Midfielder",
//                         "shirtNumber": 7
//                     },
//                     {
//                         "id": 1388,
//                         "name": "Nilton",
//                         "position": "Midfielder",
//                         "shirtNumber": 19
//                     },
//                     {
//                         "id": 1124,
//                         "name": "Clayton",
//                         "position": "Attacker",
//                         "shirtNumber": 12
//                     },
//                     {
//                         "id": 1371,
//                         "name": "Edson",
//                         "position": "Defender",
//                         "shirtNumber": 15
//                     },
//                     {
//                         "id": 1383,
//                         "name": "Regis",
//                         "position": "Midfielder",
//                         "shirtNumber": 20
//                     },
//                     {
//                         "id": 1372,
//                         "name": "Nino Paraíba",
//                         "position": "Defender",
//                         "shirtNumber": 2
//                     },
//                     {
//                         "id": 1366,
//                         "name": "Douglas Friedrich",
//                         "position": "Goalkeeper",
//                         "shirtNumber": 1
//                     },
//                     {
//                         "id": 13599,
//                         "name": "Paulo Victor",
//                         "position": "Defender",
//                         "shirtNumber": 16
//                     },
//                     {
//                         "id": 1378,
//                         "name": "Marco Antonio",
//                         "position": "Midfielder",
//                         "shirtNumber": 30
//                     },
//                     {
//                         "id": 1389,
//                         "name": "Flavio",
//                         "position": "Midfielder",
//                         "shirtNumber": 5
//                     },
//                     {
//                         "id": 1392,
//                         "name": "Júnior Brumado",
//                         "position": "Attacker",
//                         "shirtNumber": 23
//                     }
//                 ]
//             }
