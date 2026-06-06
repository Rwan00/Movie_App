import 'package:equatable/equatable.dart';
import 'package:movie_app/core/utils/app_enums.dart';
import 'package:movie_app/movies/domain/entities/movie_entity.dart';

class MovieState extends Equatable {
  final List<MovieEntity> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String message;

  const MovieState({
    required this.nowPlayingMovies,
    required this.nowPlayingState,
    required this.message,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [nowPlayingMovies, nowPlayingState, message];
}
