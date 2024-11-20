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
  const MoviesModel(
      poster:
          "https://image.tmdb.org/t/p/w1280/qWD9E0Wgn8w6nMMutCNFAUiSHrX.jpg",
      rating: 9.0,
      duration: 120,
      title: "Blade Runner 2049",
      gener: "Action",
      synosis: synosis),
  const MoviesModel(
      poster:
          "https://moviebuzzers.com/wp-content/uploads/2013/07/Despicable-Me-2-poster.jpg",
      rating: 8.3,
      duration: 110,
      title: "Minions : Despicable Me 2",
      gener: "Comedy",
      synosis: synosis),
  const MoviesModel(
      poster:
          "https://comic-cons.xyz/wp-content/uploads/marvel-cinematic-universe-the-avengers-endgame-movie-poster-830x1230.jpg",
      rating: 8.0,
      duration: 130,
      title: "Avengers",
      gener: "Action",
      synosis: synosis),
  const MoviesModel(
      poster:
          "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/c58b4681277211.5cfa6e54a6d3d.jpg",
      rating: 8.9,
      duration: 140,
      title: "Joker (2019)",
      gener: "Criminal",
      synosis: synosis),
  const MoviesModel(
      poster:
          "https://facinema.com/wp-content/uploads/2023/06/Blue-Beetle-Poster-2.jpg",
      rating: 7.5,
      duration: 150,
      title: "Blue Beetle",
      gener: "Drama",
      synosis: synosis),
];
const String synosis =
    "Synosis : In the year 2147 , humnity lives in a dystopian society ";
