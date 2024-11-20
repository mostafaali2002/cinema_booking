import 'package:cinema_booking/models/movies.dart';
import 'package:cinema_booking/widgets/movies_details_section.dart';
import 'package:flutter/material.dart';

class MovieDetailsBody extends StatelessWidget {
  const MovieDetailsBody({
    super.key,
    required this.moviesModel,
  });

  final MoviesModel moviesModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            MoviesDetailsSection(moviesModel: moviesModel),
            const SizedBox(height: 15),
            Text(
              moviesModel.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            Divider(
              height: 5,
              color: Colors.white.withOpacity(0.1),
            ),
            const SizedBox(height: 10),
            const Text(
              "synosis",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            Text(
              moviesModel.synosis,
              style: TextStyle(
                color: Colors.white.withOpacity(.4),
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
