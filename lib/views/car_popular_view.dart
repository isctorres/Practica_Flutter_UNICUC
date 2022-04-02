import 'package:flutter/material.dart';
import 'package:practica2/models/popular_movie_model.dart';

class CardPopularView extends StatelessWidget {
  PopularMovieModel popular;

  CardPopularView({Key? key, required this.popular}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blue),
      child: Stack(
        children: [
          Container(
            child: Image.network(
                'https://image.tmdb.org/t/p/w500/${popular.backdropPath}'),
          )
        ],
      ),
    );
  }
}
