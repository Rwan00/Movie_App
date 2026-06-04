import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/movies/domain/entities/movie_entity.dart';
import 'package:movie_app/movies/domain/repository/base_movie_repository.dart';

class GetTopRatedMoviesUsecase {
  final BaseMovieRepository baseMovieRepository;

  GetTopRatedMoviesUsecase({required this.baseMovieRepository});

   Future<Either<Failure,List<MovieEntity>>> execute() async {
    return await baseMovieRepository.getTopRatedMovies();
  }
}
