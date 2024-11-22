import 'package:cinema_booking/pages/reservation_page.dart';
import 'package:cinema_booking/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionReservation extends StatelessWidget {
  const CustomFloatingActionReservation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 60, spreadRadius: 60, color: Color(0xff1c1c27))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: MaterialButton(
            color: AppStyle.btnColor,
            height: 70,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReservationPage(),
                  ));
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                "Get Reservation",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
