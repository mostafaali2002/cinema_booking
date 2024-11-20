import 'dart:math';

import 'package:cinema_booking/models/movies.dart';
import 'package:cinema_booking/widgets/custom_moves.dart';
import 'package:flutter/material.dart';

class Movies extends StatefulWidget {
  const Movies({
    super.key,
  });

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  late PageController controller;
  double pageOffSet = 1;
  int currentIndex = 1;
  @override
  void initState() {
    controller = PageController(viewportFraction: 0.6, initialPage: 1)
      ..addListener(() {
        setState(() {
          pageOffSet = controller.page!;
        });
      });
    super.initState();
  }

  void dspose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      alignment: Alignment.topCenter,
      children: [
        PageView.builder(
          onPageChanged: (value) {
            setState(() {
              currentIndex = value % items.length;
            });
          },
          controller: controller,
          itemBuilder: (context, index) {
            double scale = max(0.6, (1 - (pageOffSet - index).abs() + 0.6));
            double angle = (controller.position.haveDimensions
                    ? index.toDouble() - (controller.page ?? 0)
                    : index.toDouble() - 1) *
                5;
            angle = angle.clamp(-5, 5);
            final moves = items[index % items.length];
            return CustomMovies(
              scale: scale,
              angle: angle,
              moves: moves,
              currentIndex: currentIndex,
            );
          },
        )
      ],
    ));
  }
}
