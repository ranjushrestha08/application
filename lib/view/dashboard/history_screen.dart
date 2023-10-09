import 'package:application/util/colors.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "History",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: AppColors.primaryColor),
        ),
      ),
      body: const Column(
        children: [
          Text(" History Screen"),
        ],
      ),
    );
  }
}
