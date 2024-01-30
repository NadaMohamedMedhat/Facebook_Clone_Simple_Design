import 'package:flutter/material.dart';

class CustomReact extends StatelessWidget {
  String imagePath;
  String reactName;
  CustomReact({
    super.key,
    required this.imagePath,
    required this.reactName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 25,
          width: 25,
          child: Image(
            image: AssetImage(imagePath),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(reactName),
      ],
    );
  }
}
