import 'package:cinema_booking/models/movies.dart';
import 'package:cinema_booking/utils/app_style.dart';
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
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 60, spreadRadius: 80, color: Color(0xff1c1c27))
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: FloatingActionButton.extended(
            onPressed: () {},
            label: MaterialButton(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  "Get Reservation",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              color: AppStyle.btnColor,
              height: 70,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              onPressed: () {},
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text("Movies Details"),
      ),
      body: MovieDetailsBody(moviesModel: moviesModel),
    );
  }
}
