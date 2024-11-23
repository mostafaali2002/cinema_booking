import 'package:cinema_booking/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextFieldLogin extends StatelessWidget {
  const CustomTextFieldLogin({
    this.obscure = false,
    super.key,
    required this.hint,
  });
  final String hint;
  final bool obscure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        obscureText: obscure,
        validator: (value) {
          if (value!.isEmpty) {
            return '$hint is empty';
          }
          return null;
        },
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: AppStyle.btnColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.white)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            hintText: "Enter Your $hint",
            hintStyle: const TextStyle(fontSize: 15, color: Colors.white54)),
      ),
    );
  }
}
