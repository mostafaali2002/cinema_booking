import 'dart:async';

import 'package:cinema_booking/pages/cinema_home_page.dart';
import 'package:cinema_booking/utils/app_style.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const CinemaHomePage(),
          ));
    });
    return Scaffold(
      backgroundColor: const Color(AppStyle.appBackGroundColor),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/ticket.png"),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Cinema Booking",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
