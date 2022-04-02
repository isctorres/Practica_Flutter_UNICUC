import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practica2/models/popular_movie_model.dart';

class ApiPopular {
  var URL = Uri.parse(
      "https://api.themoviedb.org/3/movie/popular?api_key=5019e68de7bc112f4e4337a500b96c56&language=es-MX&page=1");

  Future<List<PopularMovieModel>?> getAllPopular() async {
    var response = await http.get(URL);
    if (response.statusCode == 200) {
      var listPopular = jsonDecode(response.body)['results'] as List;
      return listPopular
          .map((movie) => PopularMovieModel.fromMap(movie))
          .toList();
    } else
      return null;
  }
}
