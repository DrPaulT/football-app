import 'package:football_app/data/adaptor/network/json/player.dart';
import 'package:football_app/data/adaptor/network/json/team.dart';
import 'package:json_annotation/json_annotation.dart';

part 'booking.g.dart';

@JsonSerializable(explicitToJson: true)
class Booking {
  Booking({
    required this.minute,
    required this.team,
    required this.player,
    required this.card,
  });

  int minute;
  Team team;
  Player player;
  String card;

  factory Booking.fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);

  Map<String, dynamic> toJson() => _$BookingToJson(this);
}

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
