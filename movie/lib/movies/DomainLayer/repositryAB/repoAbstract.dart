import 'package:dartz/dartz.dart';
import 'package:movie/movies/DomainLayer/enitity/MoviedetailEnt.dart';
import 'package:movie/movies/DomainLayer/enitity/RecommendEnt.dart';

import '../../../Core/Excption/failure.dart';
import '../enitity/MovieEnt.dart';

abstract class AbsMovieRepo {
  Future<Either<Faliure, List<MovieEnt>>> getNowplaying();

  Future<Either<Faliure, List<MovieEnt>>> getPopMovie();

  Future<Either<Faliure, List<MovieEnt>>> getTopMovie();
  Future<Either<Faliure, MoviedetailsEnt>> getMoviedetails(int MovieId);
  Future<Either<Faliure, List<RecommendEnt>>> getRecommendtion(int id);
}
