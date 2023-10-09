import 'package:application/widgets/custom/custom_password_fields.dart';
import 'package:application/widgets/custom/elevated_button.dart';
import 'package:application/widgets/custom/ouline_button.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "It only takes a moment to create your ",
                style: TextStyle(color: Colors.grey),
              ),
              const Text(
                "account",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 320,
                height: 50,
                child: TextFormField(
                  style: const TextStyle(),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 226, 222, 222),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    hintText: ("Full Name"),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // SizedBox(
              //   width: 320,
              //   height: 50,
              //   child: TextFormField(
              //     style: const TextStyle(),
              //     decoration: const InputDecoration(
              //         filled: true,
              //         fillColor: Color.fromARGB(255, 226, 222, 222),
              //         border: OutlineInputBorder(
              //             borderRadius:
              //                 BorderRadius.all(Radius.circular(20.0))),
              //         hintText: ("Phone Number")),
              //   ),
              // ),
              const CustomTextField(
                  hint: "hint",
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.name),
              const SizedBox(
                height: 20,
              ),

              // SizedBox(
              //   width: 320,
              //   height: 50,
              //   child: TextFormField(
              //     style: const TextStyle(),
              //     decoration: const InputDecoration(
              //         filled: true,
              //         fillColor: Color.fromARGB(255, 226, 222, 222),
              //         suffixIcon: Icon(Icons.remove_red_eye),
              //         border: OutlineInputBorder(
              //             borderRadius:
              //                 BorderRadius.all(Radius.circular(20.0))),
              //         hintText: ("password")),
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 320,
                height: 50,
                child: TextFormField(
                  style: const TextStyle(),
                  decoration: const InputDecoration(
                      filled: true,
                      suffixIcon: Icon(Icons.remove_red_eye),
                      fillColor: Color.fromARGB(255, 226, 222, 222),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      hintText: ("Confirm Password")),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(Icons.check_box),
                    Text(" I agree to all the "),
                    Text(
                      "Term of services ",
                      style: TextStyle(
                          color: Color.fromARGB(189, 10, 3, 119),
                          fontWeight: FontWeight.bold),
                    ),
                    Text("and")
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 27),
                child: Text(
                  "Privacy policy.",
                  style: TextStyle(
                      color: Color.fromARGB(189, 10, 3, 119),
                      fontWeight: FontWeight.bold),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 20, left: 15),
              //   child: ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //           shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(25)),
              //           minimumSize: const Size(300, 50),
              //           backgroundColor: const Color.fromARGB(189, 10, 3, 119)),
              //       onPressed: () {},
              //       child: const Text(
              //         "Create Account",
              //         style: TextStyle(
              //             color: Color.fromARGB(255, 251, 249, 249),
              //             fontSize: 16),
              //       )),
              // ),

              CustomElevatedButton(title: "title", onTap: () {}),
              const SizedBox(
                height: 5,
              ),
              CustomOutlinedButton(title: "title", onTap: () {}),
              const Center(
                child: Text(
                  "OR",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 15),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        minimumSize: const Size(300, 50),
                        backgroundColor:
                            const Color.fromARGB(188, 255, 255, 255)),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: NetworkImage(
                                "https://blog.hubspot.com/hubfs/image8-2.jpg"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Sign up with Google",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 80, top: 10),
                child: Row(
                  children: [
                    Text("Already registerd? ",
                        style: TextStyle(color: Colors.grey)),
                    Text("Sign in",
                        style: TextStyle(
                            color: Color.fromARGB(189, 10, 3, 119),
                            fontWeight: FontWeight.bold)),
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
