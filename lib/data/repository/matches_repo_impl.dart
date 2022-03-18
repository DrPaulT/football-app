import 'package:football_app/data/adaptor/network/json/match_list.dart';
import 'package:football_app/data/adaptor/network/mapper/match_list_mapper.dart';
import 'package:football_app/data/adaptor/network/network.dart';
import 'package:football_app/domain/entity/match.dart' as entity;
import 'package:football_app/domain/interface/matches_repo.dart';
import 'package:intl/intl.dart';

const _matchListPath = '/competitions/PL/matches';
const _daysBack = 30;
const _season = '2021';
const _ymd = 'yyyy-MM-dd';

class MatchesRepoImpl implements MatchesRepo {
  @override
  Future<List<entity.Match>> downloadMatches() async {
    final dateFrom = DateFormat(_ymd).format(
      DateTime.now().subtract(const Duration(days: _daysBack)),
    );
    final dateTo = DateFormat(_ymd).format(DateTime.now());
    // We could acquire the network class from GetIt, but we don't need to,
    // as we can fake responses with a fake Dio object inside Network.
    final jsonMap = await Network().getJsonMap(
      '$_matchListPath'
      '?season=$_season'
      '&status=FINISHED'
      '&dateFrom=${Uri.encodeComponent(dateFrom)}'
      '&dateTo=${Uri.encodeComponent(dateTo)}',
    );
    return MatchListMapper.toEntity(MatchList.fromJson(jsonMap));
  }
}
