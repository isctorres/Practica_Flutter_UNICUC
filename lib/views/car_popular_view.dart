import 'package:flutter/material.dart';
import 'package:practica2/models/popular_movie_model.dart';

class CardPopularView extends StatelessWidget {
  PopularMovieModel popular;

  CardPopularView({Key? key, required this.popular}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 2.5,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              child: FadeInImage(
                placeholder: AssetImage('images/activity_indicator.gif'),
                image: NetworkImage(
                    'https://image.tmdb.org/t/p/w500/${popular.backdropPath}'),
                fadeInDuration: Duration(milliseconds: 500),
              ),
            ),
            Opacity(
              opacity: .5,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                color: Colors.black,
                child: ListTile(
                  title: Text(
                    '${popular.title}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    '${popular.originalTitle}',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  leading: Icon(
                    Icons.movie,
                    color: Colors.white,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
