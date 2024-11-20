import 'package:cinema_booking/models/movies.dart';
import 'package:cinema_booking/widgets/movies_info_list.dart';
import 'package:flutter/material.dart';

class MoviesDetailsSection extends StatelessWidget {
  const MoviesDetailsSection({
    super.key,
    required this.moviesModel,
  });

  final MoviesModel moviesModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 335,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Hero(
            tag: moviesModel.poster,
            child: ClipRect(
              child: Image.network(moviesModel.poster),
            ),
          ),
          MoviesInfoList(
            moviesModel: moviesModel,
          )
        ],
      ),
    );
  }
}
