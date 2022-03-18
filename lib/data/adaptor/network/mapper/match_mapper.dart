import 'package:football_app/data/adaptor/network/json/match.dart';
import 'package:football_app/domain/entity/match.dart' as entity;

class MatchMapper {
  static entity.Match toEntity(Match match) {
    return entity.Match(
      id: match.id,
      homeTeam: match.homeTeam.name,
      awayTeam: match.awayTeam.name,
      winner: match.score.winner,
    );
  }
}
