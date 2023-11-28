import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie/Core/statics/enum.dart';
import 'package:movie/movies/DomainLayer/enitity/MoviedetailEnt.dart';
import 'package:movie/movies/DomainLayer/enitity/RecommendEnt.dart';
import 'package:movie/movies/DomainLayer/usecases/Usecase_recommendation.dart';
import 'package:movie/movies/DomainLayer/usecases/usecase_moviedetails.dart';

part 'movies_details_feature_event.dart';
part 'movies_details_feature_state.dart';

class MoviesDetailsFeatureBloc
    extends Bloc<MoviesDetailsFeatureEvent, MoviesDetailsFeatureState> {
  final UseCaseMovieDetails useCaseMovieDetails;
  final UsecaseRecommendation usecaseRecommendation;

  MoviesDetailsFeatureBloc(this.useCaseMovieDetails, this.usecaseRecommendation)
      : super(const MoviesDetailsFeatureState()) {
    on<GetMovieDetilsFeature>((event, emit) async {
      final result = await useCaseMovieDetails.execute(moviedetails: event.id);
      result.fold(
          (l) => emit(state.copyWith(
              massge: l.message, Detailstates: Requeststates.error)),
          (r) => emit(state.copyWith(
              moviedetailsEnt: r, Detailstates: Requeststates.loaded)));
    });
    on<GetMovieRecommend>((event, emit) async {
      final result = await usecaseRecommendation.excute(id: event.id);

      result.fold(
          (l) => emit(state.copyWith(
              RecommendState: Requeststates.error, massge: l.message)),
          (r) => emit(state.copyWith(
              recommendEnt: r, RecommendState: Requeststates.loaded)));
    });
  }
}
