import '../../domain/models/jokes/jokes.dart';

abstract class IJokes {
  Future<JokesModel> getJokes();
}
