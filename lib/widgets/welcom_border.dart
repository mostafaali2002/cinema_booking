import 'package:cinema_booking/utils/app_style.dart';
import 'package:cinema_booking/widgets/clip_border.dart';
import 'package:flutter/material.dart';

class WelcomBorder extends StatelessWidget {
  const WelcomBorder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Stack(
        children: [
          Positioned(
            child: ClipPath(
              clipper: CliperBorder(),
              child: Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  AppStyle.btnColor.withOpacity(0.3),
                  Colors.transparent
                ], stops: const [
                  0.35,
                  1
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
