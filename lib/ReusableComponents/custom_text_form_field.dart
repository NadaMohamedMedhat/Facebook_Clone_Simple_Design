import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTextFormField extends StatelessWidget {
  IconData prefixIcon;
  String hintText;
  TextInputType type;

  CustomTextFormField(
      {super.key,
      required this.prefixIcon,
      required this.hintText,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: TextFormField(
        style: const TextStyle(color: white),
        cursorColor: white,
        keyboardType: type,
        decoration: InputDecoration(
          enabled: true,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: white),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: white),
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: white,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: white),
        ),
      ),
    );
  }
}
