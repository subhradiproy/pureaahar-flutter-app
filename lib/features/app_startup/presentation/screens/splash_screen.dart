import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../app/constants/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this)
      ..addStatusListener(
        (AnimationStatus status) {
          if (status == AnimationStatus.completed) {
            log('Animation completed');
          }
        },
      );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Center(
        child: LottieBuilder.asset(
          LottieAsset.splash.path,
          onLoaded: (LottieComposition lottie) => _controller
            ..duration = lottie.duration
            ..forward(),
          controller: _controller,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
