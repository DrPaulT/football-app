import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

class HttpMock {
  static void registerMock() {
    GetIt.I.allowReassignment = true;
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);
    dioAdapter.onGet(
      RegExp(r'/competitions/PL/matches'),
      (server) => server.reply(200, _responseMap),
    );
    GetIt.I.registerLazySingleton<Dio>(() => dio);
  }
}

// This is genuine data from the football-data.org server,
// but it has been modified a bit to exercise all the code.
// I've reported the typos in VIDEO_ASSISANT_REFEREE_N* back to Daniel.
// Says they will be fixed in v4.
const _responseMap = {
  "count": 2,
  "filters": {
    "status": ["FINISHED"]
  },
  "competition": {
    "id": 2021,
    "area": {"id": 2072, "name": "England"},
    "name": "Premier League",
    "code": "PL",
    "plan": "TIER_ONE",
    "lastUpdated": "2021-04-17T02:20:14Z"
  },
  "matches": [
    {
      "id": 327210,
      "season": {
        "id": 733,
        "startDate": "2021-08-13",
        "endDate": "2022-05-22",
        "currentMatchday": 29
      },
      "utcDate": "2022-03-16T19:30:00Z",
      "status": "FINISHED",
      "matchday": 16,
      "stage": "REGULAR_SEASON",
      "group": null,
      "lastUpdated": "2022-03-17T16:20:29Z",
      "odds": {"msg": "Activate Odds-Package in User-Panel to retrieve odds."},
      "score": {
        "winner": "AWAY_TEAM",
        "duration": "REGULAR",
        "fullTime": {"homeTeam": 0, "awayTeam": 2},
        "halfTime": {"homeTeam": 0, "awayTeam": 1},
        "extraTime": {"homeTeam": null, "awayTeam": null},
        "penalties": {"homeTeam": null, "awayTeam": null}
      },
      "homeTeam": {"id": 397, "name": "Brighton & Hove Albion FC"},
      "awayTeam": {"id": 73, "name": "Tottenham Hotspur FC"},
      "referees": [
        {
          "id": 11446,
          "name": "Robert Jones",
          "role": "REFEREE",
          "nationality": "England"
        },
        {
          "id": 11576,
          "name": "Darren Cann",
          "role": "ASSISTANT_REFEREE_N1",
          "nationality": "England"
        },
        {
          "id": 11505,
          "name": "Derek Eaton",
          "role": "ASSISTANT_REFEREE_N2",
          "nationality": "England"
        },
        {
          "id": 11503,
          "name": "Graham Scott",
          "role": "FOURTH_OFFICIAL",
          "nationality": "England"
        },
        {
          "id": 11479,
          "name": "Lee Mason",
          "role": "VIDEO_ASSISANT_REFEREE_N1",
          "nationality": "England"
        },
        {
          "id": 11444,
          "name": "Matthew Wilkes",
          "role": "VIDEO_ASSISANT_REFEREE_N2",
          "nationality": null
        }
      ]
    },
    {
      "id": 327102,
      "season": {
        "id": 733,
        "startDate": "2021-08-13",
        "endDate": "2022-05-22",
        "currentMatchday": 29
      },
      "utcDate": "2022-03-16T20:15:00Z",
      "status": "FINISHED",
      "matchday": 27,
      "stage": "REGULAR_SEASON",
      "group": null,
      "lastUpdated": "2022-03-17T16:20:29Z",
      "odds": {"msg": "Activate Odds-Package in User-Panel to retrieve odds."},
      "score": {
        "winner": "HOME_TEAM",
        "duration": "REGULAR",
        "fullTime": {"homeTeam": 2, "awayTeam": 0},
        "halfTime": {"homeTeam": 0, "awayTeam": 0},
        "extraTime": {"homeTeam": null, "awayTeam": null},
        "penalties": {"homeTeam": null, "awayTeam": null}
      },
      "homeTeam": {"id": 57, "name": "Arsenal FC"},
      "awayTeam": {"id": 64, "name": "Liverpool FC"},
      "referees": [
        {
          "id": 11610,
          "name": "Andre Marriner",
          "role": "REFEREE",
          "nationality": "England"
        },
        {
          "id": 11504,
          "name": "Simon Long",
          "role": "ASSISTANT_REFEREE_N1",
          "nationality": "England"
        },
        {
          "id": 11611,
          "name": "Scott Ledger",
          "role": "ASSISTANT_REFEREE_N2",
          "nationality": "England"
        },
        {
          "id": 11423,
          "name": "Andy Madley",
          "role": "FOURTH_OFFICIAL",
          "nationality": "England"
        },
        {
          "id": 11327,
          "name": "John Brooks",
          "role": "VIDEO_ASSISANT_REFEREE_N1",
          "nationality": "England"
        },
        {
          "id": 11531,
          "name": "Marc Perry",
          "role": "VIDEO_ASSISANT_REFEREE_N2",
          "nationality": "England"
        }
      ]
    },
    {
      "id": 327210,
      "season": {
        "id": 733,
        "startDate": "2021-08-13",
        "endDate": "2022-05-22",
        "currentMatchday": 29
      },
      "utcDate": "2022-03-16T19:30:00Z",
      "status": "FINISHED",
      "matchday": 16,
      "stage": "REGULAR_SEASON",
      "group": null,
      "lastUpdated": "2022-03-17T16:20:29Z",
      "odds": {"msg": "Activate Odds-Package in User-Panel to retrieve odds."},
      "score": {
        "winner": "AWAY_TEAM",
        "duration": "REGULAR",
        "fullTime": {"homeTeam": 0, "awayTeam": 2},
        "halfTime": {"homeTeam": 0, "awayTeam": 1},
        "extraTime": {"homeTeam": null, "awayTeam": null},
        "penalties": {"homeTeam": null, "awayTeam": null}
      },
      "homeTeam": {"id": 397, "name": "Brighton & Hove Albion FC"},
      "awayTeam": {"id": 73, "name": "Tottenham Hotspur FC"},
      "referees": [
        {
          "id": 11446,
          "name": "Robert Jones",
          "role": "REFEREE",
          "nationality": "England"
        },
        {
          "id": 11576,
          "name": "Darren Cann",
          "role": "ASSISTANT_REFEREE_N1",
          "nationality": "England"
        },
        {
          "id": 11505,
          "name": "Derek Eaton",
          "role": "ASSISTANT_REFEREE_N2",
          "nationality": "England"
        },
        {
          "id": 11503,
          "name": "Graham Scott",
          "role": "FOURTH_OFFICIAL",
          "nationality": "England"
        },
        {
          "id": 11479,
          "name": "Lee Mason",
          "role": "VIDEO_ASSISANT_REFEREE_N1",
          "nationality": "England"
        },
        {
          "id": 11444,
          "name": "Matthew Wilkes",
          "role": "VIDEO_ASSISANT_REFEREE_N2",
          "nationality": null
        }
      ]
    },
    {
      "id": 327102,
      "season": {
        "id": 733,
        "startDate": "2021-08-13",
        "endDate": "2022-05-22",
        "currentMatchday": 29
      },
      "utcDate": "2022-03-16T20:15:00Z",
      "status": "FINISHED",
      "matchday": 27,
      "stage": "REGULAR_SEASON",
      "group": null,
      "lastUpdated": "2022-03-17T16:20:29Z",
      "odds": {"msg": "Activate Odds-Package in User-Panel to retrieve odds."},
      "score": {
        "winner": "HOME_TEAM",
        "duration": "REGULAR",
        "fullTime": {"homeTeam": 2, "awayTeam": 0},
        "halfTime": {"homeTeam": 0, "awayTeam": 0},
        "extraTime": {"homeTeam": null, "awayTeam": null},
        "penalties": {"homeTeam": null, "awayTeam": null}
      },
      "homeTeam": {"id": 57, "name": "Arsenal FC"},
      "awayTeam": {"id": 64, "name": "Liverpool FC"},
      "referees": [
        {
          "id": 11610,
          "name": "Andre Marriner",
          "role": "REFEREE",
          "nationality": "England"
        },
        {
          "id": 11504,
          "name": "Simon Long",
          "role": "ASSISTANT_REFEREE_N1",
          "nationality": "England"
        },
        {
          "id": 11611,
          "name": "Scott Ledger",
          "role": "ASSISTANT_REFEREE_N2",
          "nationality": "England"
        },
        {
          "id": 11423,
          "name": "Andy Madley",
          "role": "FOURTH_OFFICIAL",
          "nationality": "England"
        },
        {
          "id": 11327,
          "name": "John Brooks",
          "role": "VIDEO_ASSISANT_REFEREE_N1",
          "nationality": "England"
        },
        {
          "id": 11531,
          "name": "Marc Perry",
          "role": "VIDEO_ASSISANT_REFEREE_N2",
          "nationality": "England"
        }
      ]
    },
    {
      "id": 327102,
      "season": {
        "id": 733,
        "startDate": "2021-08-13",
        "endDate": "2022-05-22",
        "currentMatchday": 29
      },
      "utcDate": "2022-03-16T20:15:00Z",
      "status": "FINISHED",
      "matchday": 27,
      "stage": "REGULAR_SEASON",
      "group": null,
      "lastUpdated": "2022-03-17T16:20:29Z",
      "odds": {"msg": "Activate Odds-Package in User-Panel to retrieve odds."},
      "score": {
        "winner": "HOME_TEAM",
        "duration": "REGULAR",
        "fullTime": {"homeTeam": 2, "awayTeam": 0},
        "halfTime": {"homeTeam": 0, "awayTeam": 0},
        "extraTime": {"homeTeam": null, "awayTeam": null},
        "penalties": {"homeTeam": null, "awayTeam": null}
      },
      "homeTeam": {"id": 57, "name": "Arsenal FC"},
      "awayTeam": {"id": 64, "name": "Liverpool FC"},
      "referees": [
        {
          "id": 11610,
          "name": "Andre Marriner",
          "role": "REFEREE",
          "nationality": "England"
        },
        {
          "id": 11504,
          "name": "Simon Long",
          "role": "ASSISTANT_REFEREE_N1",
          "nationality": "England"
        },
        {
          "id": 11611,
          "name": "Scott Ledger",
          "role": "ASSISTANT_REFEREE_N2",
          "nationality": "England"
        },
        {
          "id": 11423,
          "name": "Andy Madley",
          "role": "FOURTH_OFFICIAL",
          "nationality": "England"
        },
        {
          "id": 11327,
          "name": "John Brooks",
          "role": "VIDEO_ASSISANT_REFEREE_N1",
          "nationality": "England"
        },
        {
          "id": 11531,
          "name": "Marc Perry",
          "role": "VIDEO_ASSISANT_REFEREE_N2",
          "nationality": "England"
        }
      ]
    }
  ]
};
