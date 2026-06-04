class ApiUrls {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = "392384457cd4710976dceb965ff1c211";

  static String endpointPath(String endpoint) =>
      "$baseUrl/$endpoint?api_key=$apiKey";

  static const String nowPlayingMovies = "/movie/now_playing";
  static const String popularMovies = "/movie/popular";
  static const String topRatedMovies = "/movie/top_rated";
}
