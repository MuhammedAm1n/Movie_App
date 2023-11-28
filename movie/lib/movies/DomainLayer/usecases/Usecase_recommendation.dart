import 'package:dartz/dartz.dart';
import 'package:movie/Core/Excption/failure.dart';
import 'package:movie/movies/DomainLayer/enitity/RecommendEnt.dart';
import 'package:movie/movies/DomainLayer/repositryAB/repoAbstract.dart';

class UsecaseRecommendation {
  final AbsMovieRepo absMovieRepo;

  UsecaseRecommendation(this.absMovieRepo);

  Future<Either<Faliure, List<RecommendEnt>>> excute({required int id}) async {
    return await absMovieRepo.getRecommendtion(id);
  }
}
