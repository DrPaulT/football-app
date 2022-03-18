import 'package:json_annotation/json_annotation.dart';

part 'competition.g.dart';

@JsonSerializable()
class Competition {
  Competition({required this.id, required this.name});

  int id;
  String name;

  factory Competition.fromJson(Map<String, dynamic> json) =>
      _$CompetitionFromJson(json);

  Map<String, dynamic> toJson() => _$CompetitionToJson(this);
}

//             {
//                 "id": 2013,
//                 "name": "Série A"
//             },
