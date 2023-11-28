import 'package:movie/movies/DataLayer/models/genersmodel.dart';
import 'package:movie/movies/DomainLayer/enitity/MoviedetailEnt.dart';

class MovieDetailsModel extends MoviedetailsEnt {
  MovieDetailsModel({
    required super.voteAverage,
    super.backdrop,
    required super.id,
    required super.overveiw,
    required super.releasedate,
    required super.runtime,
    required super.title,
    required super.genres,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
        voteAverage: json["vote_average"].toDouble(),
        backdrop: json["backdrop_path"] ?? '/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg',
        id: json["id"],
        overveiw: json["overview"],
        releasedate: json["release_date"],
        runtime: json["runtime"],
        title: json["title"],
        genres: List<Genersmodel>.from(
            json["genres"].map((x) => Genersmodel.fromJson(x))),
      );
}
