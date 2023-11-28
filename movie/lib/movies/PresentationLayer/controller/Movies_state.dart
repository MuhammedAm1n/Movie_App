import 'package:equatable/equatable.dart';
import 'package:movie/Core/statics/enum.dart';
import 'package:movie/movies/DomainLayer/enitity/MovieEnt.dart';

class MoviesState extends Equatable {
  final List<MovieEnt> nowplayingMovies;
  final Requeststates nowplayingState;
  final String nowplaymessage;

  final List<MovieEnt> popmovie;
  final Requeststates popmovieState;
  final String popmovieMessage;

  final List<MovieEnt> TopMovies;
  final Requeststates TopMoviesState;
  final String TopMOviesMessage;
  MoviesState({
    this.TopMovies = const [],
    this.TopMOviesMessage = ' ',
    this.TopMoviesState = Requeststates.loading,
    this.nowplayingMovies = const [],
    this.nowplaymessage = ' ',
    this.nowplayingState = Requeststates.loading,
    this.popmovie = const [],
    this.popmovieMessage = ' ',
    this.popmovieState = Requeststates.loading,
  });

  MoviesState copyWith({
    List<MovieEnt>? nowplayingMovies,
    Requeststates? nowplayingState,
    String? nowplaymessage,
    List<MovieEnt>? popmovie,
    Requeststates? popmovieState,
    String? popmovieMessage,
    List<MovieEnt>? TopMovies,
    Requeststates? TopMoviesState,
    String? TopMOviesMessage,
  }) {
    return MoviesState(
      nowplayingMovies: nowplayingMovies ?? this.nowplayingMovies,
      nowplayingState: nowplayingState ?? this.nowplayingState,
      nowplaymessage: nowplaymessage ?? this.nowplaymessage,
      popmovie: popmovie ?? this.popmovie,
      popmovieMessage: popmovieMessage ?? this.popmovieMessage,
      popmovieState: popmovieState ?? this.popmovieState,
      TopMovies: TopMovies ?? this.TopMovies,
      TopMoviesState: TopMoviesState ?? this.TopMoviesState,
      TopMOviesMessage: TopMOviesMessage ?? this.TopMOviesMessage,
    );
  }

  @override
  List<Object?> get props => [
        nowplayingMovies,
        nowplaymessage,
        nowplayingState,
        popmovie,
        popmovieMessage,
        popmovieState,
        TopMOviesMessage,
        TopMovies,
        TopMoviesState,
      ];
}
