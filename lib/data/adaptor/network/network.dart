import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

const _apiToken = 'b55a11c3bf054f40bb6227d8740ddb46';
const _host = 'api.football-data.org';
const _version = 'v2';

class Network {
  Future<Map<String, dynamic>> getJsonMap(String path) async {
    final dio = GetIt.I.get<Dio>();
    final options = Options(headers: {'X-Auth-Token': _apiToken});
    final response = await dio.get(path, options: options);
    return response.data;
  }

  static void registerDio() {
    final options = BaseOptions(baseUrl: 'http://$_host/$_version');
    final dio = Dio(options);
    // Dio cannot validate this certificate for some reason that is not
    // obvious, so we have to disable validation.
    // Of course, we would not do this for a production release.
    // Unfortunately this means that this does not work with the web version
    // of Dio.
    // Reported to Daniel, the api maintainer.
    dio.httpClientAdapter = DefaultHttpClientAdapter()
      ..onHttpClientCreate = (client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
    GetIt.I.registerLazySingleton<Dio>(() => dio);
  }
}
