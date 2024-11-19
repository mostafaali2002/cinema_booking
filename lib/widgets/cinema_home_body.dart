import 'package:cinema_booking/widgets/category_header.dart';
import 'package:cinema_booking/widgets/custom_category.dart';
import 'package:cinema_booking/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CinemaHomeBody extends StatelessWidget {
  const CinemaHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(),
        SizedBox(height: 25),
        CategoryHeader(),
        SizedBox(height: 16),
        CustomCategory(),
      ],
    );
  }
}
