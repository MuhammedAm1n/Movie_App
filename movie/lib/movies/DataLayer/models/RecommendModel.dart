import 'package:movie/movies/DomainLayer/enitity/RecommendEnt.dart';

class RecommendModel extends RecommendEnt {
  RecommendModel({
    required super.id,
    super.backDroppath,
  });

  factory RecommendModel.fromJson(Map<String, dynamic> json) => RecommendModel(
        id: json['id'],
        backDroppath:
            json["backdrop_path"] ?? '/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg',
      );
}
