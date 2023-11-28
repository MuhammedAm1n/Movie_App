import 'package:dio/dio.dart';
import 'package:movie/Core/Excption/ExcptionServer.dart';
import 'package:movie/Core/network/ErrorMassgeExption.dart';
import 'package:movie/Core/statics/Statics.dart';
import 'package:movie/movies/DataLayer/models/MovieDetailsModel.dart';
import 'package:movie/movies/DataLayer/models/MoviesModel.dart';
import 'package:movie/movies/DataLayer/models/RecommendModel.dart';
import 'package:movie/movies/DomainLayer/enitity/RecommendEnt.dart';

abstract class AbstractRemoteDataSrcMovie {
  Future<List<MoviesModel>> getNowplayingMovies();
  Future<List<MoviesModel>> getTopMovies();
  Future<List<MoviesModel>> getPopMovies();
  Future<MovieDetailsModel> getMovieDetails(int movie);
  Future<List<RecommendEnt>> getRecommendtion(int id);
}

class RemoteDataSrcMovie extends AbstractRemoteDataSrcMovie {
  @override
  Future<List<MoviesModel>> getNowplayingMovies() async {
    final response = await Dio().get(Statics.nowplayingPath);

    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ExptionServer(
        errorMassgeExptionModel:
            ErrorMassgeExptionModel.fromJson(response.data),
      );
    }
  }

  Future<List<MoviesModel>> getTopMovies() async {
    final response = await Dio().get(Statics.TopMovies);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ExptionServer(
        errorMassgeExptionModel:
            ErrorMassgeExptionModel.fromJson(response.data),
      );
    }
  }

  Future<List<MoviesModel>> getPopMovies() async {
    final response = await Dio().get(Statics.PopularMovies);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ExptionServer(
        errorMassgeExptionModel:
            ErrorMassgeExptionModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<MovieDetailsModel> getMovieDetails(int movieId) async {
    final response = await Dio().get(Statics.MovieDetalispath(movieId));

    if (response.statusCode == 200) {
      return MovieDetailsModel.fromJson(response.data);
    } else {
      throw ExptionServer(
        errorMassgeExptionModel:
            ErrorMassgeExptionModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<RecommendEnt>> getRecommendtion(int id) async {
    final response = await Dio().get(Statics.Recommendationpath(id));
    if (response.statusCode == 200) {
      return List<RecommendModel>.from((response.data["results"] as List)
          .map((e) => RecommendModel.fromJson(e)));
    } else {
      throw ExptionServer(
        errorMassgeExptionModel:
            ErrorMassgeExptionModel.fromJson(response.data),
      );
    }
  }
}
