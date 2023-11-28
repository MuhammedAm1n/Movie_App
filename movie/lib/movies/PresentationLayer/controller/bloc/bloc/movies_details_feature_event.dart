part of 'movies_details_feature_bloc.dart';

abstract class MoviesDetailsFeatureEvent extends Equatable {
  const MoviesDetailsFeatureEvent();
  @override
  List<Object?> get props => throw UnimplementedError();
}

class GetMovieDetilsFeature extends MoviesDetailsFeatureEvent {
  final int id;

  GetMovieDetilsFeature(this.id);
}

class GetMovieRecommend extends MoviesDetailsFeatureEvent {
  final int id;

  GetMovieRecommend(this.id);
}
