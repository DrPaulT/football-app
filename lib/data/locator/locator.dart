import 'package:football_app/data/adaptor/network/network.dart';
import 'package:football_app/data/repository/matches_repo_impl.dart';
import 'package:football_app/domain/interface/matches_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class Locator {
  static void setUp() {
    getIt.registerLazySingleton<MatchesRepo>(() => MatchesRepoImpl());
    Network.registerDio();
  }
}
