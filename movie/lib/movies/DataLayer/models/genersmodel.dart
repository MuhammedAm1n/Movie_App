import 'package:movie/movies/DomainLayer/enitity/genres.dart';

class Genersmodel extends Genres {
  Genersmodel({required super.name, required super.id});

  factory Genersmodel.fromJson(Map<String, dynamic> json) =>
      Genersmodel(name: json["name"], id: json["id"]);
}
