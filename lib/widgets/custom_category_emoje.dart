import 'package:cinema_booking/models/category_model.dart';
import 'package:cinema_booking/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomCategoryEmoje extends StatelessWidget {
  const CustomCategoryEmoje({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: AppStyle.greyColor,
              borderRadius: BorderRadius.all(Radius.elliptical(5, 5))),
          child: Text(
            categoryModel.categoryEmoje,
            style: const TextStyle(fontSize: 25),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          categoryModel.categoryName,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
