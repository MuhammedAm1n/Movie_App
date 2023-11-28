import 'package:equatable/equatable.dart';
import 'package:movie/movies/DomainLayer/enitity/genres.dart';

class MoviedetailsEnt extends Equatable {
  final List<Genres> genres;
  final String? backdrop;
  final int id;
  final String overveiw;
  final String releasedate;
  final int runtime;
  final String title;
  final double voteAverage;

  MoviedetailsEnt(
      {required this.voteAverage,
      this.backdrop,
      required this.id,
      required this.overveiw,
      required this.releasedate,
      required this.runtime,
      required this.title,
      required this.genres});

  @override
  List<Object?> get props => [
        backdrop,
        id,
        overveiw,
        releasedate,
        runtime,
        title,
        voteAverage,
        genres
      ];
}
