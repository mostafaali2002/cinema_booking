import 'package:cinema_booking/utils/app_style.dart';
import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "See All",
          style: TextStyle(color: AppStyle.btnColor),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 15,
          color: AppStyle.btnColor,
        )
      ],
    );
  }
}
