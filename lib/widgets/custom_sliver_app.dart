import 'package:application/data.dart';
import 'package:flutter/material.dart';

class CustomSliverApp extends StatelessWidget {
  const CustomSliverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      floating: true,
      leadingWidth: 100,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Image.asset('assets/images/youtube_logo.png'),
      ),
      actions: [
        IconButton(icon: const Icon(Icons.cast), onPressed: () {}),
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {},
        ),
        IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        IconButton(
          iconSize: 40.0,
          icon: CircleAvatar(
            foregroundImage: AssetImage(currentUser.profileImageUrl),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
