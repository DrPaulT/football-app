import 'package:football_app/domain/entity/match.dart' as entity;

abstract class MatchesRepo {
  Future<List<entity.Match>> downloadMatches();
}
