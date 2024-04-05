import 'package:flutter/material.dart';
import 'package:my_video_player/routes/routes.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Player examples'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pushNamed(Routes.webkit);

                }, child: Text('Play video from network')),
          ],
        ),
      ),
    );
  }
}
