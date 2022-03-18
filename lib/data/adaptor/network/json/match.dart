import 'package:football_app/data/adaptor/network/json/booking.dart';
import 'package:football_app/data/adaptor/network/json/competition.dart';
import 'package:football_app/data/adaptor/network/json/goal.dart';
import 'package:football_app/data/adaptor/network/json/player.dart';
import 'package:football_app/data/adaptor/network/json/score.dart';
import 'package:football_app/data/adaptor/network/json/season.dart';
import 'package:football_app/data/adaptor/network/json/substitution.dart';
import 'package:football_app/data/adaptor/network/json/team.dart';
import 'package:json_annotation/json_annotation.dart';

part 'match.g.dart';

@JsonSerializable(explicitToJson: true)
class Match {
  Match({
    required this.id,
    this.competition,
    required this.season,
    required this.utcDate,
    required this.status,
    this.attendance,
    required this.matchday,
    required this.stage,
    this.group,
    required this.lastUpdated,
    required this.homeTeam,
    required this.awayTeam,
    required this.score,
    this.goals,
    this.bookings,
    this.substitutions,
    required this.referees,
  });

  int id;
  Competition? competition;
  Season season;
  String utcDate;
  String status;
  String? attendance;
  int matchday;
  String stage;
  String? group;
  String lastUpdated;
  Team homeTeam;
  Team awayTeam;
  Score score;
  List<Goal>? goals;
  List<Booking>? bookings;
  List<Substitution>? substitutions;
  List<Player> referees;

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);

  Map<String, dynamic> toJson() => _$MatchToJson(this);
}

//         {
//             "id": 204967,
//             "competition": {
//                 "id": 2013,
//                 "name": "Série A"
//             },
//             "season": {
//                 "id": 15,
//                 "startDate": "2018-04-14",
//                 "endDate": "2018-12-02",
//                 "currentMatchday": 20,
//                 "availableStages": [
//                     "REGULAR_SEASON"
//                 ]
//             },
//             "utcDate": "2018-08-22T22:30:00Z",
//             "status": "FINISHED",
//             "attendance": null,
//             "matchday": 20,
//             "stage": "REGULAR_SEASON",
//             "group": "Regular Season",
//             "lastUpdated": "2018-08-23T02:30:23Z",
//             "homeTeam": {
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
//             },
//             "awayTeam": {
//                 "id": 6684,
//                 "name": "SC Internacional",
//                 "coach": {
//                     "id": 11147,
//                     "name": "Odair Hellmann",
//                     "countryOfBirth": "Brazil",
//                     "nationality": "Brazil"
//                 },
//                 "captain": {
//                     "id": 1575,
//                     "name": "Rodrigo Dourado",
//                     "shirtNumber": 13
//                 },
//                 "lineup": [
//                     {
//                         "id": 1572,
//                         "name": "Rodrigo Moledo",
//                         "position": "Defender",
//                         "shirtNumber": 4
//                     },
//                     {
//                         "id": 1562,
//                         "name": "Marcelo Lomba",
//                         "position": "Goalkeeper",
//                         "shirtNumber": 12
//                     },
//                     {
//                         "id": 1581,
//                         "name": "Camilo",
//                         "position": "Midfielder",
//                         "shirtNumber": 21
//                     },
//                     {
//                         "id": 1580,
//                         "name": "Edenilson",
//                         "position": "Midfielder",
//                         "shirtNumber": 8
//                     },
//                     {
//                         "id": 1575,
//                         "name": "Rodrigo Dourado",
//                         "position": "Midfielder",
//                         "shirtNumber": 13
//                     },
//                     {
//                         "id": 1567,
//                         "name": "Víctor Cuesta",
//                         "position": "Defender",
//                         "shirtNumber": 15
//                     },
//                     {
//                         "id": 1590,
//                         "name": "William Pottker",
//                         "position": "Attacker",
//                         "shirtNumber": 99
//                     },
//                     {
//                         "id": 1582,
//                         "name": "Patrick Nascimento",
//                         "position": "Midfielder",
//                         "shirtNumber": 88
//                     },
//                     {
//                         "id": 1593,
//                         "name": "Rossi",
//                         "position": "Attacker",
//                         "shirtNumber": 22
//                     },
//                     {
//                         "id": 1584,
//                         "name": "Luis Eduardo Dudu",
//                         "position": "Midfielder",
//                         "shirtNumber": 2
//                     },
//                     {
//                         "id": 1566,
//                         "name": "Iago",
//                         "position": "Defender",
//                         "shirtNumber": 28
//                     }
//                 ],
//                 "bench": [
//                     {
//                         "id": 1179,
//                         "name": "Emerson Santos",
//                         "position": "Defender",
//                         "shirtNumber": 20
//                     },
//                     {
//                         "id": 1564,
//                         "name": "Uendel",
//                         "position": "Defender",
//                         "shirtNumber": 6
//                     },
//                     {
//                         "id": 1570,
//                         "name": "Gabriel Dias",
//                         "position": "Defender",
//                         "shirtNumber": 30
//                     },
//                     {
//                         "id": 1574,
//                         "name": "Zeca",
//                         "position": "Defender",
//                         "shirtNumber": 37
//                     },
//                     {
//                         "id": 1565,
//                         "name": "William Klaus",
//                         "position": "Defender",
//                         "shirtNumber": 44
//                     },
//                     {
//                         "id": 1561,
//                         "name": "Keiller",
//                         "position": "Goalkeeper",
//                         "shirtNumber": 32
//                     },
//                     {
//                         "id": 45887,
//                         "name": "Martín Sarrafiore",
//                         "position": "Attacker",
//                         "shirtNumber": 29
//                     },
//                     {
//                         "id": 61369,
//                         "name": "Gustavo",
//                         "position": "Midfielder",
//                         "shirtNumber": 33
//                     },
//                     {
//                         "id": 1563,
//                         "name": "Daniel",
//                         "position": "Goalkeeper",
//                         "shirtNumber": 42
//                     },
//                     {
//                         "id": 1579,
//                         "name": "Juan",
//                         "position": "Midfielder",
//                         "shirtNumber": 47
//                     },
//                     {
//                         "id": 1585,
//                         "name": "Brenner",
//                         "position": "Midfielder",
//                         "shirtNumber": 48
//                     }
//                 ]
//             },
//             "score": {
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
//             "goals": [
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
//             ],
//             "bookings": [
//                 {
//                     "minute": 33,
//                     "team": {
//                         "id": 6684,
//                         "name": "SC Internacional"
//                     },
//                     "player": {
//                         "id": 1590,
//                         "name": "William Pottker"
//                     },
//                     "card": "YELLOW_CARD"
//                 },
//                 {
//                     "minute": 33,
//                     "team": {
//                         "id": 1777,
//                         "name": "EC Bahia"
//                     },
//                     "player": {
//                         "id": 1368,
//                         "name": "Lucas Fonseca"
//                     },
//                     "card": "YELLOW_CARD"
//                 },
//                 {
//                     "minute": 84,
//                     "team": {
//                         "id": 6684,
//                         "name": "SC Internacional"
//                     },
//                     "player": {
//                         "id": 1580,
//                         "name": "Edenilson"
//                     },
//                     "card": "YELLOW_CARD"
//                 }
//             ],
//             "substitutions": [
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
//                 {
//                     "minute": 68,
//                     "team": {
//                         "id": 6684,
//                         "name": "SC Internacional"
//                     },
//                     "playerOut": {
//                         "id": 1593,
//                         "name": "Rossi"
//                     },
//                     "playerIn": {
//                         "id": 1579,
//                         "name": "Juan"
//                     }
//                 },
//                 {
//                     "minute": 71,
//                     "team": {
//                         "id": 6684,
//                         "name": "SC Internacional"
//                     },
//                     "playerOut": {
//                         "id": 1584,
//                         "name": "Luis Eduardo Dudu"
//                     },
//                     "playerIn": {
//                         "id": 1574,
//                         "name": "Zeca"
//                     }
//                 },
//                 {
//                     "minute": 74,
//                     "team": {
//                         "id": 6684,
//                         "name": "SC Internacional"
//                     },
//                     "playerOut": {
//                         "id": 1581,
//                         "name": "Camilo"
//                     },
//                     "playerIn": {
//                         "id": 1585,
//                         "name": "Brenner"
//                     }
//                 },
//                 {
//                     "minute": 74,
//                     "team": {
//                         "id": 1777,
//                         "name": "EC Bahia"
//                     },
//                     "playerOut": {
//                         "id": 1381,
//                         "name": "Vinicius"
//                     },
//                     "playerIn": {
//                         "id": 1378,
//                         "name": "Marco Antonio"
//                     }
//                 },
//                 {
//                     "minute": 83,
//                     "team": {
//                         "id": 1777,
//                         "name": "EC Bahia"
//                     },
//                     "playerOut": {
//                         "id": 1334,
//                         "name": "Bruno"
//                     },
//                     "playerIn": {
//                         "id": 1124,
//                         "name": "Clayton"
//                     }
//                 }
//             ],
//             "referees": [
//                 {
//                     "id": 11137,
//                     "name": "Rodrigo D'Alonso Ferreira",
//                     "nationality": null
//                 },
//                 {
//                     "id": 11138,
//                     "name": "Helton Nunes",
//                     "nationality": null
//                 },
//                 {
//                     "id": 11140,
//                     "name": "Alex dos Santos",
//                     "nationality": null
//                 },
//                 {
//                     "id": 11139,
//                     "name": "Thiago Americano Labes",
//                     "nationality": null
//                 }
//             ]
//         }
