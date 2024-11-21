import 'package:cinema_booking/models/seat_status_model.dart';
import 'package:cinema_booking/utils/app_style.dart';
import 'package:cinema_booking/widgets/status.dart';
import 'package:flutter/material.dart';

class SeatsStatus extends StatelessWidget {
  const SeatsStatus({super.key});

  @override
  Widget build(BuildContext context) {
    List<SeatStatusModel> status = const [
      SeatStatusModel(color: AppStyle.greyColor, status: "Avaliable"),
      SeatStatusModel(color: AppStyle.btnColor, status: "Selected"),
      SeatStatusModel(color: Colors.white, status: "reserved"),
    ];

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
            status.length,
            (index) => Status(
                  seatStatusModel: status[index],
                )));
  }
}
