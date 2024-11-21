import 'package:cinema_booking/utils/app_style.dart';
import 'package:cinema_booking/widgets/reservation_body.dart';
import 'package:flutter/material.dart';

class ReservationPage extends StatelessWidget {
  const ReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(AppStyle.appBackGroundColor),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text("Select Seats"),
        centerTitle: true,
      ),
      body: const ReservationBody(),
    );
  }
}
