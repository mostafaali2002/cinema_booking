import 'package:cinema_booking/widgets/custom_category_emoje_list.dart';
import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomCategoryEmojeList(),
      ],
    );
  }
}
