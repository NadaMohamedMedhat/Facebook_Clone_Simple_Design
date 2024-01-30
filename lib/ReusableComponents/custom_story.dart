import 'package:flutter/material.dart';

import 'colors.dart';

class CustomStory extends StatelessWidget {
  const CustomStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox.fromSize(
            child: Image.asset(
              'assets/images/facebookStory.jpg',
              height: 150,
            ),
          ),
        ),
        const CircleAvatar(
          backgroundColor: Color(0xff1975D5),
          child: Icon(
            Icons.person,
            color: white,
          ),
        ),
        const Positioned(
          top: 100,
          right: 2,
          child: Text(
            'Owner',
            style: TextStyle(
              color: white,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
