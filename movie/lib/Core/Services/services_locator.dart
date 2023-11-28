import 'package:get_it/get_it.dart';
import 'package:movie/movies/DataLayer/datasource/RemoteDataSrcMovie.dart';
import 'package:movie/movies/DataLayer/repo/MovieRepo.dart';
import 'package:movie/movies/DomainLayer/repositryAB/repoAbstract.dart';
import 'package:movie/movies/DomainLayer/usecases/Usecase_recommendation.dart';
import 'package:movie/movies/DomainLayer/usecases/usecase_moviedetails.dart';
import 'package:movie/movies/DomainLayer/usecases/usecase_nowplaying.dart';
import 'package:movie/movies/DomainLayer/usecases/usecase_popmovie.dart';
import 'package:movie/movies/DomainLayer/usecases/usecase_topmovie.dart';
import 'package:movie/movies/PresentationLayer/controller/Movies_bloc.dart';
import 'package:movie/movies/PresentationLayer/controller/bloc/bloc/movies_details_feature_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    //BLoc

    sl.registerFactory(() => MoviessBloc(sl(), sl(), sl()));
    sl.registerFactory(() => MoviesDetailsFeatureBloc(sl(), sl()));
//USE Cases
    sl.registerLazySingleton(() => UseCaseNowplaying(sl()));
    sl.registerLazySingleton(() => UseCasePopMovie(sl()));
    sl.registerLazySingleton(() => UseCaseTopMovie(sl()));
    sl.registerLazySingleton(() => UseCaseMovieDetails(sl()));
    sl.registerLazySingleton(() => UsecaseRecommendation(sl()));

//REpo

    sl.registerLazySingleton<AbsMovieRepo>(() => MovieRepo(sl()));

//DATA SOurce

    sl.registerLazySingleton<AbstractRemoteDataSrcMovie>(
        () => RemoteDataSrcMovie());
  }
}
