import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie/Core/statics/Statics.dart';
import 'package:movie/Core/statics/enum.dart';
import 'package:movie/movies/PresentationLayer/controller/bloc/bloc/movies_details_feature_bloc.dart';
import 'package:shimmer/shimmer.dart';

class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesDetailsFeatureBloc, MoviesDetailsFeatureState>(
      builder: (context, state) {
        switch (state.RecommendState) {
          case Requeststates.error:
            return Text(state.massgeRecoomend);
          case Requeststates.loading:
            return Text('');
          case Requeststates.loaded:
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: state.recommendEnt!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      childAspectRatio: 0.7,
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (context, index) {
                      final recommendation = state.recommendEnt![index];
                      return FadeIn(
                        duration: const Duration(milliseconds: 500),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(4.0)),
                          child: CachedNetworkImage(
                            imageUrl:
                                Statics.imageUrl(recommendation.backDroppath),
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
                            height: 180.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
              ),
            );
        }
      },
    );
  }
}
