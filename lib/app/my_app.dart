import 'package:flutter/material.dart';
import 'package:music_apps/controller/play_music_controller.dart';
import 'package:music_apps/core/resources/font_managers.dart';
import 'package:music_apps/core/resources/routes_managers.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    PlayMusicController playMusicController = PlayMusicController(0);
    playMusicController.disposeAudio();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: FontsManagers.orbitronName),
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.kSplashScreen,
      routes: RoutesManagers.routes,
    );
  }
}
