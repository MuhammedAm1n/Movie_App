part of 'movies_details_feature_bloc.dart';

class MoviesDetailsFeatureState extends Equatable {
  final MoviedetailsEnt? moviedetailsEnt;
  final Requeststates Detailstates;
  final String massge;
  final List<RecommendEnt>? recommendEnt;
  final Requeststates RecommendState;
  final String massgeRecoomend;

  const MoviesDetailsFeatureState({
    this.moviedetailsEnt,
    this.Detailstates = Requeststates.loading,
    this.massge = '',
    this.recommendEnt,
    this.RecommendState = Requeststates.loading,
    this.massgeRecoomend = ' ',
  });

  MoviesDetailsFeatureState copyWith({
    MoviedetailsEnt? moviedetailsEnt,
    Requeststates? Detailstates,
    String? massge,
    List<RecommendEnt>? recommendEnt,
    Requeststates? RecommendState,
    String? massgeRecoomend,
  }) {
    return MoviesDetailsFeatureState(
        moviedetailsEnt: moviedetailsEnt ?? this.moviedetailsEnt,
        Detailstates: Detailstates ?? this.Detailstates,
        massge: massge ?? this.massge,
        recommendEnt: recommendEnt ?? this.recommendEnt,
        RecommendState: RecommendState ?? this.RecommendState,
        massgeRecoomend: massgeRecoomend ?? this.massgeRecoomend);
  }

  @override
  List<Object?> get props => [
        moviedetailsEnt,
        Detailstates,
        massge,
        massgeRecoomend,
        RecommendState,
        recommendEnt,
      ];
}
