import 'package:football_app/data/adaptor/network/json/match_list.dart';
import 'package:football_app/data/adaptor/network/mapper/match_mapper.dart';
import 'package:football_app/domain/entity/match.dart' as entity;

class MatchListMapper {
  static List<entity.Match> toEntity(MatchList matchList) {
    List<entity.Match> matches = [];
    for (final match in matchList.matches) {
      matches.add(MatchMapper.toEntity(match));
    }
    return matches;
  }
}
