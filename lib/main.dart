import 'package:cinema_booking/pages/cinema_home_page.dart';
import 'package:cinema_booking/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CinemaBooking());
}

class CinemaBooking extends StatelessWidget {
  const CinemaBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: SplashPage(),
    );
  }
}
