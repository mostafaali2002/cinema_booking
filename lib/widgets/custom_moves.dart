import 'dart:math';
import 'package:cinema_booking/models/movies.dart';
import 'package:cinema_booking/pages/movie_details_page.dart';
import 'package:cinema_booking/widgets/custom_dotted.dart';
import 'package:flutter/material.dart';

class CustomMovies extends StatelessWidget {
  const CustomMovies({
    super.key,
    required this.scale,
    required this.angle,
    required this.moves,
    required this.currentIndex,
  });

  final double scale;
  final double angle;
  final MoviesModel moves;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MoviesDetailsPage(moviesModel: moves),
            ));
      },
      child: Padding(
        padding: EdgeInsets.only(top: 100 - (scale / 1.6 * 100)),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Transform.rotate(
              angle: angle * pi / 90,
              child: Hero(
                tag: moves.poster,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    moves.poster,
                    height: 300,
                    width: 205,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 330,
              child: CustomDotted(currentIndex: currentIndex),
            )
          ],
        ),
      ),
    );
  }
}
