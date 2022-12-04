import 'package:flutter/material.dart';
import 'package:musicplayer_flutter_app/Screens/MusicPage.dart';

import 'Screens/PlayListPage.dart';
import 'Screens/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "playlistPage": (context) => PlayListPage(),
        "musicPage": (context) => MusicPage(),
      },
    );
  }
}

