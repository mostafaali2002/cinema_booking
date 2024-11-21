import 'package:cinema_booking/models/movies.dart';
import 'package:cinema_booking/utils/app_style.dart';
import 'package:cinema_booking/widgets/custom_floating_action_reservation.dart';
import 'package:cinema_booking/widgets/movie_details_body.dart';
import 'package:flutter/material.dart';

class MoviesDetailsPage extends StatelessWidget {
  const MoviesDetailsPage({super.key, required this.moviesModel});
  final MoviesModel moviesModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppStyle.appBackGroundColor),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CustomFloatingActionReservation(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text("Movies Details"),
        centerTitle: true,
      ),
      body: MovieDetailsBody(moviesModel: moviesModel),
    );
  }
}
