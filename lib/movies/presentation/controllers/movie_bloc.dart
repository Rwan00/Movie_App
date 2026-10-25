import 'package:bloc/bloc.dart';
import 'package:movie_app/core/utils/app_enums.dart';

import 'package:movie_app/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movie_app/movies/presentation/controllers/movie_events.dart';
import 'package:movie_app/movies/presentation/controllers/movie_state.dart';

class MovieBloc extends Bloc<MovieEvents, MovieState> {
  final GetNowPlayingMoviesUsecase getNowPlayingMoviesUsecase;
  MovieBloc(this.getNowPlayingMoviesUsecase) : super(const MovieState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
     
      final result =await getNowPlayingMoviesUsecase.excute();
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
