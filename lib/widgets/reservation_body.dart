import 'package:cinema_booking/widgets/date_of_move.dart';
import 'package:cinema_booking/widgets/reserved_tickets.dart';
import 'package:cinema_booking/widgets/seat_status.dart';
import 'package:cinema_booking/widgets/selected_seats.dart';
import 'package:cinema_booking/widgets/welcom_border.dart';
import 'package:flutter/material.dart';

class ReservationBody extends StatefulWidget {
  const ReservationBody({super.key});

  @override
  State<ReservationBody> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ReservationBody> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          WelcomBorder(),
          SizedBox(height: 20),
          SelectedSeats(),
          SizedBox(height: 30),
          SeatsStatus(),
          SizedBox(height: 35),
          DateOfMovie(),
          SizedBox(height: 50),
          ReservedTickets(),
        ],
      ),
    );
  }
}
