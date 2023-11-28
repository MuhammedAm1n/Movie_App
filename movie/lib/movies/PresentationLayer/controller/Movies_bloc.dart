import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/Core/statics/enum.dart';
import 'package:movie/movies/DomainLayer/usecases/usecase_nowplaying.dart';
import 'package:movie/movies/DomainLayer/usecases/usecase_popmovie.dart';
import 'package:movie/movies/DomainLayer/usecases/usecase_topmovie.dart';
import 'package:movie/movies/PresentationLayer/controller/Movies_events.dart';
import 'package:movie/movies/PresentationLayer/controller/Movies_state.dart';

class MoviessBloc extends Bloc<MoviesEvent, MoviesState> {
  final UseCaseNowplaying useCaseNowplaying;
  final UseCasePopMovie useCasePopMovie;
  final UseCaseTopMovie useCaseTopMovie;
  MoviessBloc(
      this.useCaseNowplaying, this.useCasePopMovie, this.useCaseTopMovie)
      : super(MoviesState()) {
    on<GetNowplayingEvent>(_methodnowplayingevent);
    on<GetPopMoviesEvent>(_methodpopMoviesEvent);
    on<GetTopMoviesEvent>(
      _MethodTopMOviesEvent,
    );
  }

  FutureOr<void> _MethodTopMOviesEvent(event, emit) async {
    final result = await useCaseTopMovie.excute();

    result.fold(
      (l) => emit(state.copyWith(
          TopMoviesState: Requeststates.error, TopMOviesMessage: l.message)),
      (r) => emit(
          state.copyWith(TopMovies: r, TopMoviesState: Requeststates.loaded)),
    );
  }

  FutureOr<void> _methodpopMoviesEvent(event, emit) async {
    final result = await useCasePopMovie.excute();

    result.fold(
      (l) => emit(state.copyWith(
          popmovieState: Requeststates.error, popmovieMessage: l.message)),
      (r) => emit(
          state.copyWith(popmovie: r, popmovieState: Requeststates.loaded)),
    );
  }

  FutureOr<void> _methodnowplayingevent(event, emit) async {
    final result = await useCaseNowplaying.excute();

    result.fold(
      (l) => emit(state.copyWith(
          nowplayingState: Requeststates.error, nowplaymessage: l.message)),
      (r) => emit(
        state.copyWith(
            nowplayingState: Requeststates.loaded, nowplayingMovies: r),
      ),
    );
  }
}
