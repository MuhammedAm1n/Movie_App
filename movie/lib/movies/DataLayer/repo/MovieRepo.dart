import 'package:dartz/dartz.dart';
import 'package:movie/Core/Excption/ExcptionServer.dart';
import 'package:movie/Core/Excption/failure.dart';
import 'package:movie/movies/DataLayer/datasource/RemoteDataSrcMovie.dart';
import 'package:movie/movies/DomainLayer/enitity/MovieEnt.dart';
import 'package:movie/movies/DomainLayer/enitity/MoviedetailEnt.dart';
import 'package:movie/movies/DomainLayer/enitity/RecommendEnt.dart';
import 'package:movie/movies/DomainLayer/repositryAB/repoAbstract.dart';

// TODO : Check this Section
class MovieRepo extends AbsMovieRepo {
  final AbstractRemoteDataSrcMovie abstractRemoteDataSrcMovie;

  MovieRepo(this.abstractRemoteDataSrcMovie);

  @override
  Future<Either<Faliure, List<MovieEnt>>> getNowplaying() async {
    final response = await abstractRemoteDataSrcMovie.getNowplayingMovies();
    try {
      return Right(response);
    } on ExptionServer catch (failure) {
      return Left(
          ServerFailure(failure.errorMassgeExptionModel.StatusMessaage));
    }
  }

  @override
  Future<Either<Faliure, List<MovieEnt>>> getPopMovie() async {
    final response = await abstractRemoteDataSrcMovie.getPopMovies();
    try {
      return Right(response);
    } on ExptionServer catch (failure) {
      return Left(
          ServerFailure(failure.errorMassgeExptionModel.StatusMessaage));
    }
  }

  @override
  Future<Either<Faliure, List<MovieEnt>>> getTopMovie() async {
    final response = await abstractRemoteDataSrcMovie.getTopMovies();
    try {
      return Right(response);
    } on ExptionServer catch (failure) {
      return Left(
          ServerFailure(failure.errorMassgeExptionModel.StatusMessaage));
    }
  }

  @override
  Future<Either<Faliure, MoviedetailsEnt>> getMoviedetails(
      int Moviedetails) async {
    final response =
        await abstractRemoteDataSrcMovie.getMovieDetails(Moviedetails);
    try {
      return Right(response);
    } on ExptionServer catch (failure) {
      return Left(
          ServerFailure(failure.errorMassgeExptionModel.StatusMessaage));
    }
  }

  @override
  Future<Either<Faliure, List<RecommendEnt>>> getRecommendtion(int id) async {
    final response = await abstractRemoteDataSrcMovie.getRecommendtion(id);
    try {
      return Right(response);
    } on ExptionServer catch (failure) {
      return Left(
          ServerFailure(failure.errorMassgeExptionModel.StatusMessaage));
    }
  }
}
