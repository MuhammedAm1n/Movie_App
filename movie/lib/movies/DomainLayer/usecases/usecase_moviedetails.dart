import 'package:dartz/dartz.dart';
import 'package:movie/Core/Excption/failure.dart';
import 'package:movie/movies/DomainLayer/enitity/MoviedetailEnt.dart';
import 'package:movie/movies/DomainLayer/repositryAB/repoAbstract.dart';

class UseCaseMovieDetails {
  final AbsMovieRepo abs;

  UseCaseMovieDetails(this.abs);

  Future<Either<Faliure, MoviedetailsEnt>> execute(
      {required int moviedetails}) async {
    return await abs.getMoviedetails(moviedetails);
  }
}
