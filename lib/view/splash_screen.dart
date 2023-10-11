import 'package:application/controller/splash_screen_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});

final c = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(height: 300,
            // width: 300,
            // decoration: BoxDecoration(image: AssetImage("assets\images\car-logo.png")),
            // ),
            Image.asset(
              "assets/images/car-logo.png",
              height: 300,
              width: 300,
            ),
            const Center(
              child: CupertinoActivityIndicator(
                radius: 15,
                color: Colors.black12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
