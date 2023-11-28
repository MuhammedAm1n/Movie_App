import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/Core/Services/services_locator.dart';
import 'package:movie/movies/PresentationLayer/components/newDetails.dart';
import 'package:movie/movies/PresentationLayer/components/recommended.dart';
import 'package:movie/movies/PresentationLayer/controller/bloc/bloc/movies_details_feature_bloc.dart';

class MovieDetailScreen extends StatelessWidget {
  final int id;

  const MovieDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => sl<MoviesDetailsFeatureBloc>()
          ..add(GetMovieDetilsFeature(id))
          ..add(GetMovieRecommend(id)),
        child: Scaffold(
          body: Column(
            children: [
              NewDetails(),
              SizedBox(
                height: 5,
              ),
              Recommended(),
            ],
          ),
        ));
  }
}
