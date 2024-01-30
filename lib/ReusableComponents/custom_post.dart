import 'package:flutter/material.dart';

import 'colors.dart';
import 'custom_react.dart';

class CustomPost extends StatelessWidget {
  const CustomPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            CircleAvatar(
              backgroundColor: black,
              child: Icon(
                Icons.person,
                color: white,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Text(
                  'Owner',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '3h',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.public),
                  ],
                ),
              ],
            ),
          ],
        ),
        const Text(
          'My Post',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  '100',
                ),
                SizedBox(
                  width: 2,
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Image(
                    image: AssetImage('assets/images/like.jpg'),
                  ),
                ),
              ],
            ),
            Text('100 Comments'),
          ],
        ),
        const Divider(
          color: Colors.grey,
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomReact(
                  imagePath: 'assets/images/singleLike.jpg', reactName: 'Like'),
              CustomReact(
                  imagePath: 'assets/images/comment.jpg', reactName: 'Comment'),
              CustomReact(
                  imagePath: 'assets/images/share.png', reactName: 'Share'),
            ],
          ),
        ),
        const Divider(
          color: Colors.grey,
          thickness: 2,
        ),
      ],
    );
  }
}
