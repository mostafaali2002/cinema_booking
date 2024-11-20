import 'package:cinema_booking/models/movie_info_model.dart';
import 'package:cinema_booking/models/movies.dart';
import 'package:cinema_booking/widgets/movies_info.dart';
import 'package:flutter/material.dart';

class MoviesInfoList extends StatelessWidget {
  const MoviesInfoList({
    super.key,
    required this.moviesModel,
  });
  final MoviesModel moviesModel;
  @override
  Widget build(BuildContext context) {
    List<MovieInfoModel> info = [
      MovieInfoModel(
          name: "Genera",
          value: moviesModel.gener,
          iconData: Icons.videocam_rounded),
      MovieInfoModel(
          name: "Duration",
          value: "${moviesModel.duration}",
          iconData: Icons.timer),
      MovieInfoModel(
          name: "Rating",
          value: "${moviesModel.rating}/10",
          iconData: Icons.timer),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
          info.length, (index) => MoviesInfo(movieInfoModel: info[index])),
    );
  }
}
