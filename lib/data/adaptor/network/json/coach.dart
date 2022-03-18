import 'package:json_annotation/json_annotation.dart';

part 'coach.g.dart';

@JsonSerializable()
class Coach {
  Coach({
    required this.id,
    required this.name,
    required this.countryOfBirth,
    required this.nationality,
  });

  int id;
  String name;
  String countryOfBirth;
  String nationality;

  factory Coach.fromJson(Map<String, dynamic> json) => _$CoachFromJson(json);

  Map<String, dynamic> toJson() => _$CoachToJson(this);
}

//                 {
//                     "id": 11142,
//                     "name": "Enderson Moreira",
//                     "countryOfBirth": "Brazil",
//                     "nationality": "Brazil"
//                 }
