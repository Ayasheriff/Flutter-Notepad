import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_app2/note_screen.dart';
import 'package:image/image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Splash'),
        centerTitle: true,
      ),
      body: AnimatedSplashScreen(
        splash: Icons.edit_note_outlined,

        // splash: 'assets/note_splash.png',
        nextScreen: NoteScreen(),
        duration: 3000,
        centered: true,
        splashTransition: SplashTransition.fadeTransition,
        // splashIconSize: double.maxFinite,
        splashIconSize: 250,
        backgroundColor: Colors.white,
      ),
    );
  }
}
