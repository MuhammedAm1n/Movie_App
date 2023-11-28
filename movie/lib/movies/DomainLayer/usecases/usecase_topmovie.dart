import 'package:dartz/dartz.dart';
import 'package:movie/movies/DomainLayer/enitity/MovieEnt.dart';
import 'package:movie/movies/DomainLayer/repositryAB/repoAbstract.dart';

import '../../../Core/Excption/failure.dart';

class UseCaseTopMovie {
  final AbsMovieRepo absMovieRepo;

  UseCaseTopMovie(this.absMovieRepo);

  Future<Either<Faliure, List<MovieEnt>>> excute() async {
    return await absMovieRepo.getTopMovie();
  }
}
