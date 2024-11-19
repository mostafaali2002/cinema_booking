import 'package:cinema_booking/models/category_model.dart';
import 'package:cinema_booking/widgets/custom_category_emoje.dart';
import 'package:flutter/material.dart';

class CustomCategoryEmojeList extends StatelessWidget {
  const CustomCategoryEmojeList({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> items = [
      const CategoryModel(categoryName: "Comedy", categoryEmoje: "😂"),
      const CategoryModel(categoryName: "Romancy", categoryEmoje: "😍"),
      const CategoryModel(categoryName: "Drama", categoryEmoje: "😊"),
      const CategoryModel(categoryName: "Honor", categoryEmoje: "😱"),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
          items.length,
          (index) => CustomCategoryEmoje(
                categoryModel: items[index],
              )),
    );
  }
}
