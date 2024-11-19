import 'package:cinema_booking/utils/app_style.dart';
import 'package:cinema_booking/widgets/cinema_home_body.dart';
import 'package:cinema_booking/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CinemaHomePage extends StatelessWidget {
  const CinemaHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(AppStyle.appBackGroundColor),
      appBar: CustomAppBar(),
      body: CinemaHomeBody(),
    );
  }
}
