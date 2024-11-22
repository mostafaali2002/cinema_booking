import 'package:cinema_booking/models/seats_model.dart';
import 'package:cinema_booking/utils/app_style.dart';
import 'package:cinema_booking/widgets/reserved_tickets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateOfMovie extends StatefulWidget {
  const DateOfMovie({super.key});

  @override
  State<DateOfMovie> createState() => _DateOfMovieState();
}

class _DateOfMovieState extends State<DateOfMovie> {
  final items = List<DateTime>.generate(15, (index) {
    return DateTime.utc(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
    ).add(Duration(days: index));
  });
  DateTime selectedTime = DateTime.now();
  List<String> selectedSeats = [];
  @override
  void initState() {
    super.initState();
    selectedTime = DateTime.utc(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      int.parse(availableTime[0].split(":")[0]),
      int.parse(availableTime[0].split(":")[1]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppStyle.greyColor.withOpacity(.6)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Select date and time",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                      items.length,
                      (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSeats.clear();
                                selectedTime = items[index];
                              });
                            },
                            child: Container(
                              margin: index == 0
                                  ? const EdgeInsets.only(left: 20, right: 20)
                                  : const EdgeInsets.only(right: 20),
                              padding: const EdgeInsets.fromLTRB(8, 12, 8, 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: DateFormat("d/M/y")
                                              .format(selectedTime) ==
                                          DateFormat("d/M/y")
                                              .format(items[index])
                                      ? AppStyle.btnColor
                                      : AppStyle.greyColor),
                              child: Column(
                                children: [
                                  Text(
                                    DateFormat("MMM").format(
                                      items[index],
                                    ),
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: DateFormat("d/M/y")
                                                    .format(selectedTime) ==
                                                DateFormat("d/M/y")
                                                    .format(items[index])
                                            ? Colors.white
                                            : Colors.transparent),
                                    child: Text(
                                      DateFormat("dd").format(
                                        items[index],
                                      ),
                                      style: TextStyle(
                                          color: DateFormat("d/M/y")
                                                      .format(selectedTime) ==
                                                  DateFormat("d/M/y")
                                                      .format(items[index])
                                              ? const Color(
                                                  AppStyle.appBackGroundColor)
                                              : Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ))
                ],
              ),
            ),
            const SizedBox(height: 35),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    availableTime.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            selectedSeats.clear();
                            selectedTime = DateTime.utc(
                              selectedTime.year,
                              selectedTime.month,
                              selectedTime.day,
                              int.parse(availableTime[index].split(":")[0]),
                              int.parse(availableTime[index].split(":")[1]),
                            );
                          },
                        );
                      },
                      child: Container(
                        margin: index == 0
                            ? const EdgeInsets.only(left: 20, right: 20)
                            : const EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppStyle.greyColor,
                          border: Border.all(
                            width: 2,
                            color: DateFormat("HH:mm")
                                        .format(selectedTime)
                                        .toString() ==
                                    availableTime[index]
                                ? AppStyle.btnColor
                                : Colors.transparent,
                          ),
                        ),
                        child: Text(
                          availableTime[index],
                          style: TextStyle(
                              fontSize: 12,
                              color: DateFormat("HH:mm")
                                          .format(selectedTime)
                                          .toString() ==
                                      availableTime[index]
                                  ? AppStyle.btnColor
                                  : Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            const ReservedTickets(),
          ],
        ),
      ),
    );
  }
}
