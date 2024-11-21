import 'package:cinema_booking/models/seat_status_model.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({
    super.key,
    required this.seatStatusModel,
  });
  final SeatStatusModel seatStatusModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 15,
          decoration: BoxDecoration(
              color: seatStatusModel.color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 5),
        Text(
          seatStatusModel.status,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        )
      ],
    );
  }
}
