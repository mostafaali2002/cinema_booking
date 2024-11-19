class MoviesModel {
  final String poster, title, gener, synosis;
  final double rating;
  final int duration;
  const MoviesModel(
      {required this.poster,
      required this.rating,
      required this.duration,
      required this.title,
      required this.gener,
      required this.synosis});
}

List<MoviesModel> items = [
  MoviesModel(
      poster: "poster",
      rating: 9.0,
      duration: 120,
      title: "Blade Runner 2049",
      gener: "Action",
      synosis: synosis),
  MoviesModel(
      poster: "poster",
      rating: 8.3,
      duration: 110,
      title: "Minions : Despicable Me 2",
      gener: "Comedy",
      synosis: synosis),
  MoviesModel(
      poster: "poster",
      rating: 8.0,
      duration: 130,
      title: "Create the scene (and polish)",
      gener: "Action",
      synosis: synosis),
  MoviesModel(
      poster: "poster",
      rating: 8.9,
      duration: 140,
      title: "Joker (2019)",
      gener: "Criminal",
      synosis: synosis),
  MoviesModel(
      poster: "",
      rating: 7.5,
      duration: 150,
      title: "Blue Beetle",
      gener: "Drama",
      synosis: synosis),
];
const String synosis =
    "Synosis : In the year 2147 , humnity lives in a dystopian society ";
