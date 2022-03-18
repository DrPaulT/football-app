import 'package:flutter/material.dart';
import 'package:football_app/domain/story/find_team_with_most_wins.dart';

class MatchNotifier extends ChangeNotifier {
  String winningTeam = '';

  Future<void> teamWithMostWins() async {
    if (winningTeam.isEmpty) {
      winningTeam = await FindTeamWithMostWins().story;
      notifyListeners();
    }
  }
}
