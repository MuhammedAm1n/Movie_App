import 'package:dartz/dartz.dart';

import '../../../Core/Excption/failure.dart';
import '../enitity/MovieEnt.dart';
import '../repositryAB/repoAbstract.dart';

class UseCasePopMovie {
  final AbsMovieRepo absMovieRepo;

  UseCasePopMovie(this.absMovieRepo);

  Future<Either<Faliure, List<MovieEnt>>> excute() async {
    return await absMovieRepo.getPopMovie();
  }
}
