class Statics {
  static const String baseURL = "https://api.themoviedb.org/3";
  static const Apikey = "e9a14bfde78a7284aba9a9140466a0eb";
  static const nowplayingPath = "$baseURL/movie/now_playing?api_key=$Apikey";
  static const PopularMovies = "$baseURL/movie/popular?api_key=$Apikey";
  static const TopMovies = "$baseURL/movie/top_rated?api_key=$Apikey";
  static MovieDetalispath(int movieId) =>
      "$baseURL/movie/$movieId?api_key=$Apikey";
  static Recommendationpath(int id) =>
      "$baseURL/movie/$id/recommendations?api_key=$Apikey";
  static const baseimageUrl = "https://image.tmdb.org/t/p/w500/";
  static String imageUrl(String? path) => '$baseimageUrl$path';
}
