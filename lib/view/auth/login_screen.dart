import 'package:application/util/colors.dart';
import 'package:application/widgets/custom/custom_textfields.dart';

import 'package:flutter/material.dart';

import '../../widgets/custom/elevated_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
        child: Form(
          child: Column(
            children: [
              const Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: AppColors.primaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                  hint: "Username",
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.name),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                  hint: "Password",
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.name),
              const SizedBox(
                height: 20,
              ),
              CustomElevatedButton(title: "Login", onTap: () {}),
              const SizedBox(
                height: 15,
              ),
              const Text("Forget Password?"),
              const Padding(
                padding: EdgeInsets.only(left: 90),
                child: Row(
                  children: [
                    Text("New Here? "),
                    Text(
                      "Sign in ",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("now.")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
