import 'package:movie_app/movies/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  const MovieModel({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.genderIds,
    required super.overview,
    required super.voteAverage,
    required super.releasedDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json["id"],
      title: json["title"],
      backdropPath: json["backdrop_path"],
      genderIds: List<int>.from(json["genre_ids"].map((e) => e)),
      overview: json["overview"],
      voteAverage: json["vote_average"],
      releasedDate: json["release_date"],
    );
  }
}
