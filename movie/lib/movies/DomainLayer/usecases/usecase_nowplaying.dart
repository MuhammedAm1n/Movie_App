import 'package:dartz/dartz.dart';
import 'package:movie/movies/DomainLayer/enitity/MovieEnt.dart';
import 'package:movie/movies/DomainLayer/repositryAB/repoAbstract.dart';

import '../../../Core/Excption/failure.dart';

class UseCaseNowplaying {
  final AbsMovieRepo absMovieRepo;

  UseCaseNowplaying(this.absMovieRepo);

  Future<Either<Faliure, List<MovieEnt>>> excute() async {
    return await absMovieRepo.getNowplaying();
  }
}
