import 'package:facebook_clone/ReusableComponents/colors.dart';
import 'package:facebook_clone/ReusableComponents/custom_post.dart';
import 'package:facebook_clone/ReusableComponents/custom_story.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<CustomStory> story = [];
  List<CustomPost> post = [];
  static const String route = 'HomeScreen';
  HomeScreen({super.key}) {
    for (int i = 0; i < 10; i++) {
      story.add(const CustomStory());
      post.add(const CustomPost());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: const Text(
          'Facebook',
          style: TextStyle(
            color: white,
            fontSize: 20,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 150,
                child: ListView.separated(
                  separatorBuilder: (BuildContext, int index) => const SizedBox(
                    width: 4,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int position) =>
                      const CustomStory(),
                  itemCount: story.length,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (BuildContext, int index) => const SizedBox(
                    width: 4,
                  ),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int position) =>
                      const CustomPost(),
                  itemCount: post.length,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
