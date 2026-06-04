import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/movies/domain/entities/movie_entity.dart';
import 'package:movie_app/movies/domain/repository/base_movie_repository.dart';

class GetNowPlayingMoviesUsecase {
  final BaseMovieRepository baseMovieRepository;

  GetNowPlayingMoviesUsecase({required this.baseMovieRepository});

  Future<Either<Failure,List<MovieEntity>>> excute() async {
    return await baseMovieRepository.getNowPlayingMovies();
  }
}
