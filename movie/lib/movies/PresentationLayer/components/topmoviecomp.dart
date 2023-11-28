import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_fadein/flutter_fadein.dart';

import 'package:movie/Core/statics/Statics.dart';
import 'package:movie/movies/PresentationLayer/controller/Movies_bloc.dart';
import 'package:movie/movies/PresentationLayer/controller/Movies_state.dart';
import 'package:movie/movies/PresentationLayer/screens/movie_detail_screen.dart';
import 'package:shimmer/shimmer.dart';

class TopmovieComp extends StatelessWidget {
  const TopmovieComp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviessBloc, MoviesState>(builder: (context, state) {
      return FadeIn(
        duration: const Duration(milliseconds: 500),
        child: SizedBox(
          height: 170.0,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            itemCount: state.TopMovies.length,
            itemBuilder: (context, index) {
              final movie = state.TopMovies[index];
              return Container(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                MovieDetailScreen(id: movie.id)));
                  },
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    child: CachedNetworkImage(
                      width: 120.0,
                      fit: BoxFit.cover,
                      imageUrl: Statics.imageUrl(movie.backdropPath),
                      placeholder: (context, url) => Shimmer.fromColors(
                        baseColor: Colors.grey[850]!,
                        highlightColor: Colors.grey[800]!,
                        child: Container(
                          height: 170.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
    });
  }
}
