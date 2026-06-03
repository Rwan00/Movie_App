import 'package:movie_app/movies/domain/entities/movie_entity.dart';
import 'package:movie_app/movies/domain/repository/base_movie_repository.dart';

class GetPopularMoviesUsecase {
  final BaseMovieRepository baseMovieRepository;

  GetPopularMoviesUsecase({required this.baseMovieRepository});

  Future<List<MovieEntity>> execute() async {
    return await baseMovieRepository.getPopularMovies();
  }
}
