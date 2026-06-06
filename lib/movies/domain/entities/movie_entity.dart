// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genderIds;
  final String overview;
  final double voteAverage;
  final String releasedDate;

 const MovieEntity({
    required this.id,
    required this.title,
    required this.backdropPath,
    required this.genderIds,
    required this.overview,
    required this.voteAverage,
    required this.releasedDate,
  });

  

  @override
  List<Object> get props {
    return [
      id,
      title,
      backdropPath,
      genderIds,
      overview,
      voteAverage,
      releasedDate
    ];
  }
}
