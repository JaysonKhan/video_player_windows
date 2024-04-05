import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_video_player/presentation/screens/main_screen.dart';
import 'package:my_video_player/routes/routes.dart';
import 'package:video_player_media_kit/video_player_media_kit.dart';

void main() {
  runZonedGuarded(() {
    VideoPlayerMediaKit.ensureInitialized(
      android: true,          // default: false    -    dependency: media_kit_libs_android_video
      iOS: true,              // default: false    -    dependency: media_kit_libs_ios_video
      macOS: true,            // default: false    -    dependency: media_kit_libs_macos_video
      windows: true,           // default: false    -    dependency: media_kit_libs_linux
    );
    runApp(const MyApp());
  }, (error, stack) {
    print('-----------------------------------');
    print("ERROR: $error");
    print("STACK$stack");
    print('-----------------------------------');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) => Routes.generateRoutes(settings),
      home: const MainScreen(),
    );
  }
}
