import 'package:dio/dio.dart';
import 'package:movie_api_bloc/src/models/movies.dart';

class ServicesApi {
  final Dio _dio = Dio();
  static const String url =
      "https://api.themoviedb.org/3/movie/now_playing?api_key=70cecb38d699d641b56a261ff44c456a&language=en-US&page=1";

  Future<List<Movies>> getMovies() async {
    try {
      final response = await _dio.get(url);
      var movies = response.data['results'] as List;
      List<Movies> movieList = movies.map((m) => Movies.fromJson(m)).toList();
      print("Movies$movieList");
      return movieList;
    } catch (error, stacktrece) {
      throw Exception("Exception accourd $error with stacktreace $stacktrece");
    }
  }
}
