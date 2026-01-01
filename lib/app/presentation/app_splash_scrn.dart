import 'package:steel_soul/styles/icons.dart';
import 'package:flutter/material.dart';

class AppSplashScreen extends StatelessWidget {
  const AppSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(decoration: const BoxDecoration(color: Colors.white), child: Center(child: Image.asset(AppIcons.info.path))),
    );
  }
}