import 'package:cinema_booking/widgets/see_all.dart';
import 'package:flutter/material.dart';

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Category",
            style: TextStyle(color: Colors.white),
          ),
          SeeAll(),
        ],
      ),
    );
  }
}
