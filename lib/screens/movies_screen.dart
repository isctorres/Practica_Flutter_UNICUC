import 'package:flutter/material.dart';
import 'package:practica2/models/popular_movie_model.dart';
import 'package:practica2/network/api_popular.dart';
import 'package:practica2/views/car_popular_view.dart';

class MoviesScreen extends StatefulWidget {
  MoviesScreen({Key? key}) : super(key: key);

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  ApiPopular? apiPopular;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiPopular = ApiPopular();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Movies'),
      ),
      body: FutureBuilder(
          future: apiPopular!.getAllPopular(),
          builder: (BuildContext context,
              AsyncSnapshot<List<PopularMovieModel>?> snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text('Ocurrio un error en la petición'),
              );
            } else {
              if (snapshot.connectionState == ConnectionState.done) {
                return _listPopularMovies(snapshot.data!);
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }
          }),
    );
  }

  Widget _listPopularMovies(List<PopularMovieModel> movies) {
    return ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemBuilder: (context, index) {
        PopularMovieModel movie = movies[index];
        return CardPopularView(
          popular: movie,
        );
      },
      itemCount: movies.length,
    );
  }
}
