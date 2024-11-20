import 'package:cinema_booking/widgets/category_header.dart';
import 'package:cinema_booking/widgets/custom_category.dart';
import 'package:cinema_booking/widgets/custom_text_field.dart';
import 'package:cinema_booking/widgets/movies.dart';
import 'package:cinema_booking/widgets/showing_header.dart';
import 'package:flutter/material.dart';

class CinemaHomeBody extends StatelessWidget {
  const CinemaHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(),
        SizedBox(height: 25),
        CategoryHeader(),
        SizedBox(height: 16),
        CustomCategory(),
        SizedBox(height: 30),
        ShowingHeader(),
        SizedBox(
          height: 16,
        ),
        Movies()
      ],
    );
  }
}
