import 'package:flutter/material.dart';

class ShowingHeader extends StatelessWidget {
  const ShowingHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text("Showing this month", style: TextStyle(color: Colors.white)),
    );
  }
}
