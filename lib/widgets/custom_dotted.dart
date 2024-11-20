import 'package:cinema_booking/models/movies.dart';
import 'package:cinema_booking/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomDotted extends StatelessWidget {
  const CustomDotted({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        items.length,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.only(right: 15),
          width: currentIndex == index ? 30 : 10,
          height: 10,
          decoration: BoxDecoration(
            color: currentIndex == index ? AppStyle.btnColor : Colors.white24,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
