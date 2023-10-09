import 'package:application/util/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: AppColors.primaryColor),
        ),
      ),
      body: const Column(
        children: [
          Text(" Home Screen"),
        ],
      ),
    );
  }
}
