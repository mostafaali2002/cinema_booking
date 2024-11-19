import 'dart:math';

import 'package:cinema_booking/models/movies.dart';
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
            return GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(top: 100 - (scale / 1.6 * 100)),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Transform.rotate(
                      angle: angle * pi / 90,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.network(
                          moves.poster,
                          height: 300,
                          width: 205,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        )
      ],
    ));
  }
}
