import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/movies/domain/entities/movie_entity.dart';

abstract class BaseMovieRepository {
  Future<Either<Failure,List<MovieEntity>>> getNowPlayingMovies();
   Future<Either<Failure,List<MovieEntity>>> getPopularMovies();
   Future<Either<Failure,List<MovieEntity>>> getTopRatedMovies();
}
