import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movie_app/movies/presentation/controllers/movie_bloc.dart';
import 'package:movie_app/movies/presentation/controllers/movie_events.dart';
import 'package:movie_app/movies/presentation/controllers/movie_state.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
     print("testtt22");
    return BlocProvider(
      create: (context) => MovieBloc()..add(GetNowPlayingMoviesEvent()),
      lazy: false,
      child: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          print(state);
          print("testtt");
          return Scaffold();
        },
      ),
    );
  }
}
