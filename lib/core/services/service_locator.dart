import 'package:get_it/get_it.dart';
import 'package:movie_app/movies/data/datasource/movie_remote_datasource.dart';
import 'package:movie_app/movies/data/repository/movie_repository.dart';
import 'package:movie_app/movies/domain/repository/base_movie_repository.dart';
import 'package:movie_app/movies/domain/usecases/get_now_playing_movies_usecase.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    ///Usecases
    sl.registerLazySingleton<GetNowPlayingMoviesUsecase>(
      () => GetNowPlayingMoviesUsecase(baseMovieRepository: sl()),
    );

    ///Repositories
    sl.registerLazySingleton<BaseMovieRepository>(
      () => MovieRepository(datasource: sl()),
    );

    ///RemoteDatasources
    sl.registerLazySingleton<BaseMovieRemoteDatasource>(
      () => MovieRemoteDatasource(),
    );
  }
}
