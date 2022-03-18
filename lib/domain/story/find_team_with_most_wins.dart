import 'package:football_app/domain/interface/matches_repo.dart';
import 'package:get_it/get_it.dart';

class FindTeamWithMostWins {
  Future<String> get story async {
    final matchesNetwork = GetIt.I.get<MatchesRepo>();
    final matches = await matchesNetwork.downloadMatches();
    Map<String, int> teamWinsMap = {};
    var winningTeam = '';
    var mostWins = 0;
    for (final match in matches) {
      if (match.winner == 'HOME_TEAM') {
        _updateMap(teamWinsMap, match.homeTeam);
      } else if (match.winner == 'AWAY_TEAM') {
        _updateMap(teamWinsMap, match.awayTeam);
      }
      if ((teamWinsMap[match.homeTeam] ?? 0) > mostWins) {
        winningTeam = match.homeTeam;
        mostWins = teamWinsMap[match.homeTeam]!;
      } else if ((teamWinsMap[match.awayTeam] ?? 0) > mostWins) {
        winningTeam = match.awayTeam;
        mostWins = teamWinsMap[match.awayTeam]!;
      }
    }
    return winningTeam;
  }

  void _updateMap(Map<String, int> map, String team) {
    if (map.keys.contains(team)) {
      map[team] = map[team]! + 1;
    } else {
      map[team] = 1;
    }
  }
}
