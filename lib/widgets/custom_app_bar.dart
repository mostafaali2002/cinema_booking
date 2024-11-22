import 'package:cinema_booking/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcom Mostafa 🖐",
                  style: TextStyle(color: Colors.white54, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Let's relax and watch a movie",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
            Spacer(),
            CircleAvatar(
              radius: 20,
              backgroundColor: AppStyle.greyColor,
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}
