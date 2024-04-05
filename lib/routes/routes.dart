import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:my_video_player/presentation/screens/main_screen.dart';
import 'package:my_video_player/presentation/screens/video_player_web_kit.dart';

class Routes {
  static const String home = '/';
  static const String webkit = '/webkit';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    try {
      final Map<String, dynamic>? args =
          settings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};

      switch (settings.name) {
        case home:
          return MaterialWithModalsPageRoute(
            settings: const RouteSettings(name: 'Home Screen'),
            builder: (_) => const MainScreen(),
          );
        case webkit:
          return MaterialWithModalsPageRoute(
            settings: const RouteSettings(name: 'Home Screen'),
            builder: (_) => const VideoPlayerWebKit(),
          );
        default:
          return CupertinoPageRoute(
            settings: const RouteSettings(name: 'Splash Screen'),
            builder: (_) => const MainScreen(),
          );
      }
    } catch (e) {
      print('ERROR: $e');

      return MaterialWithModalsPageRoute(
        settings: const RouteSettings(name: 'Error Screen'),
        builder: (_) => const MainScreen(),
      );
    }
  }
}
