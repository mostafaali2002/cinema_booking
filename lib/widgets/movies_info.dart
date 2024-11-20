import 'package:cinema_booking/models/movie_info_model.dart';
import 'package:flutter/material.dart';

class MoviesInfo extends StatelessWidget {
  const MoviesInfo({
    super.key,
    required this.movieInfoModel,
  });
  final MovieInfoModel movieInfoModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102,
      height: 95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 1,
            color: Colors.white,
            strokeAlign: BorderSide.strokeAlignOutside,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(color: Colors.white.withOpacity(0.2), blurRadius: 5)
              ]),
              child: Icon(
                movieInfoModel.iconData,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(movieInfoModel.name,
                style: TextStyle(color: Colors.white.withOpacity(.3))),
            const SizedBox(height: 5),
            Text(
              movieInfoModel.value,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
