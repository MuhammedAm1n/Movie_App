import 'package:equatable/equatable.dart';

abstract class MoviesEvent extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class GetNowplayingEvent extends MoviesEvent {}

class GetTopMoviesEvent extends MoviesEvent {}

class GetPopMoviesEvent extends MoviesEvent {}
