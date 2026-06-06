import 'package:bloc/bloc.dart';
import 'package:movie_app/core/utils/app_enums.dart';
import 'package:movie_app/movies/data/datasource/movie_remote_datasource.dart';
import 'package:movie_app/movies/data/repository/movie_repository.dart';
import 'package:movie_app/movies/domain/repository/base_movie_repository.dart';
import 'package:movie_app/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movie_app/movies/presentation/controllers/movie_events.dart';
import 'package:movie_app/movies/presentation/controllers/movie_state.dart';

class MovieBloc extends Bloc<MovieEvents, MovieState> {
  MovieBloc() : super(const MovieState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      BaseMovieRemoteDatasource baseMovieRemoteDatasource =
          MovieRemoteDatasource();
      BaseMovieRepository baseMovieRepository = MovieRepository(
        datasource: baseMovieRemoteDatasource,
      );
      final result = await GetNowPlayingMoviesUsecase(
        baseMovieRepository: baseMovieRepository,
      ).excute();
      emit(const MovieState(nowPlayingState: RequestState.loaded));
      result.fold(
        (l) => emit(
          MovieState(
            nowPlayingMessage: l.errorMessage,
            nowPlayingState: RequestState.error,
          ),
        ),
        (r) => emit(
          MovieState(nowPlayingMovies: r, nowPlayingState: RequestState.loaded),
        ),
      );
    });
  }
}
