import 'package:movie_app/movies/domain/entities/movie_entity.dart';

abstract class BaseMovieRepository {
  Future<List<MovieEntity>> getNowPlayingMovies();
  Future<List<MovieEntity>> getPopularMovies();
  Future<List<MovieEntity>> getTopRatedMovies();
}
