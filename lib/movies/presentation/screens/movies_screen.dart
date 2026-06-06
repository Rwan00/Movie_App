import 'package:flutter/material.dart';
import 'package:movie_app/movies/data/datasource/movie_remote_datasource.dart';
import 'package:movie_app/movies/data/repository/movie_repository.dart';
import 'package:movie_app/movies/domain/repository/base_movie_repository.dart';
import 'package:movie_app/movies/domain/usecases/get_now_playing_movies_usecase.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    BaseMovieRemoteDatasource baseMovieRemoteDatasource =
        MovieRemoteDatasource();
    BaseMovieRepository baseMovieRepository = MovieRepository(
      datasource: baseMovieRemoteDatasource,
    );

    final result = await GetNowPlayingMoviesUsecase(
      baseMovieRepository: baseMovieRepository,
    ).excute();
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
