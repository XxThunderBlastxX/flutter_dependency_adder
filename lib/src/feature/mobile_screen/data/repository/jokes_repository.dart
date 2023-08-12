import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../app/provider/dio_client.dart';
import '../../domain/models/jokes/jokes.dart';
import '../interface/jokes_interface.dart';

final getJokesProvider = FutureProvider<JokesModel>(
  (ref) => ref.watch(jokesRepositoryProvider).getJokes(),
);

final jokesRepositoryProvider = Provider<JokesRepository>(
  (ref) => JokesRepository(
    dio: ref.watch(dioClientProvider),
    baseUrl: 'https://v2.jokeapi.dev',
  ),
);

class JokesRepository extends IJokes {
  final Dio _dio;
  final String _baseUrl;

  JokesRepository({
    required Dio dio,
    required String baseUrl,
  })  : _dio = dio,
        _baseUrl = baseUrl;

  @override
  Future<JokesModel> getJokes() async {
    try {
      const String path =
          '/joke/Programming,Miscellaneous?blacklistFlags=nsfw,religious,political&type=twopart';

      final res = await _dio.get('$_baseUrl$path');

      final JokesModel joke = JokesModel.fromJson(res.data);

      return joke;
    } catch (_) {
      const JokesModel joke = JokesModel(
        setup: 'What\'s the difference between a feminist and a grenade?',
        delivery:
            'The grenade actually accomplishes something when it triggers.',
      );
      return joke;
    }
  }
}
