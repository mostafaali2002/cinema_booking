import 'package:cinema_booking/models/seats_model.dart';
import 'package:cinema_booking/utils/app_style.dart';
import 'package:flutter/material.dart';

class ReservedTickets extends StatefulWidget {
  const ReservedTickets({super.key});

  @override
  State<ReservedTickets> createState() => _ReservedTicketsState();
}

class _ReservedTicketsState extends State<ReservedTickets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, right: 30, left: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Total Price",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(
                "\$ ${selectedSeats.length * 20}.00",
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(width: 30),
          Expanded(
              child: GestureDetector(
            onTap: () {
              Navigator.pop(context);

              var snack = const SnackBar(
                elevation: 2,
                backgroundColor: Colors.green,
                content: Text(
                  "Booking has been completed successfully",
                  style: TextStyle(color: Colors.white),
                ),
                duration: Duration(seconds: 4),
              );
              ScaffoldMessenger.of(context).showSnackBar(snack);
            },
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppStyle.btnColor),
              child: const Center(
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
