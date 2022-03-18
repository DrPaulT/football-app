import 'package:json_annotation/json_annotation.dart';

part 'player.g.dart';

@JsonSerializable()
class Player {
  Player({
    required this.id,
    required this.name,
    this.position,
    this.shirtNumber,
  });

  int id;
  String name;
  String? position;
  int? shirtNumber;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);

  Map<String, dynamic> toJson() => _$PlayerToJson(this);
}

//                     {
//                         "id": 38734,
//                         "name": "Gilberto",
//                         "position": "Attacker",
//                         "shirtNumber": 9
//                     },
