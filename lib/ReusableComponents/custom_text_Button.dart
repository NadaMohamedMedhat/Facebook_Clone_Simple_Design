import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTextButton extends StatelessWidget {
  String title;
  CustomTextButton({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
      onPressed: (){},
      child: Text(
       title,
        style: const TextStyle(
          color: white,
          fontSize: 16,
        ),
      ),
    );
  }
}
