import 'package:cinema_booking/models/seats_model.dart';
import 'package:cinema_booking/utils/app_style.dart';
import 'package:cinema_booking/widgets/date_of_move.dart';
import 'package:cinema_booking/widgets/seat_status.dart';
import 'package:flutter/material.dart';

class SelectedSeats extends StatefulWidget {
  const SelectedSeats({super.key});

  @override
  State<SelectedSeats> createState() => _SelectedSeatsState();
}

class _SelectedSeatsState extends State<SelectedSeats> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(numRow.length, (colIndex) {
          int numCol = colIndex == 0 || colIndex == numRow.length - 1 ? 6 : 8;
          return Padding(
            padding:
                EdgeInsets.only(bottom: colIndex == numRow.length - 1 ? 0 : 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...List.generate(numCol, (rowIndex) {
                  String seatNum = "${numRow[colIndex]}${rowIndex + 1}";
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (selectedSeats.contains(seatNum)) {
                          selectedSeats.remove(seatNum);
                        } else if (!reservedSeats.contains(seatNum)) {
                          selectedSeats.add(seatNum);
                        }
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      margin: EdgeInsets.only(
                          right: rowIndex == (numCol / 2) - 1 ? 30 : 10),
                      decoration: BoxDecoration(
                          color: reservedSeats.contains(seatNum)
                              ? Colors.white
                              : selectedSeats.contains(seatNum)
                                  ? AppStyle.btnColor
                                  : AppStyle.greyColor,
                          borderRadius: BorderRadius.circular(7.5)),
                    ),
                  );
                })
              ],
            ),
          );
        }),
        const SizedBox(height: 30),
        const SeatsStatus(),
        const SizedBox(height: 35),
        const DateOfMovie(),
        const SizedBox(height: 30),
        Padding(
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
        ),
      ],
    );
  }
}
