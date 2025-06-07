import 'package:application/data.dart';
import 'package:application/widgets/custom_sliver_app.dart';
import 'package:application/widgets/video_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black45,
      body: CustomScrollView(
        slivers: [
          CustomSliverApp(),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 60.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final video = videos[index];
                return VideoCard(video: video);
              }, childCount: videos.length),
            ),
          ),
        ],
      ),
    );
  }
}
