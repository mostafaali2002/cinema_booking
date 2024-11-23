import 'package:cinema_booking/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          fillColor: AppStyle.greyColor,
          filled: true,
          hintStyle: const TextStyle(color: Colors.white),
          hintText: "Search",
          prefixIcon: const Icon(Icons.search, color: Colors.white),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
