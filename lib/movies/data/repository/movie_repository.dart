import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/exceptions.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/movies/data/datasource/movie_remote_datasource.dart';
import 'package:movie_app/movies/domain/entities/movie_entity.dart';
import 'package:movie_app/movies/domain/repository/base_movie_repository.dart';

class MovieRepository implements BaseMovieRepository {
  final BaseMovieRemoteDatasource datasource;

  MovieRepository({required this.datasource});

   

   @override
   Future<Either<Failure, List<MovieEntity>>> getNowPlayingMovies() async {
     final result = await datasource.getNowPlayingMovies();
     try {
       return Right(result);
     } on ServerException catch (failure) {
       return Left(ServerFailure(errorMessage: failure.errorMessageModel.statusMessage));
     }
   }

  @override
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies()async {
    final result = await datasource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(errorMessage: failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies() async{
    final result = await datasource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(errorMessage: failure.errorMessageModel.statusMessage));
    }
  }
}
