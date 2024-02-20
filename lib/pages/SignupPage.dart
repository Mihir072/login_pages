import 'package:flutter/material.dart';
import 'package:login_pages/config/colors.dart';
import 'package:get/get.dart';
import 'package:login_pages/pages/MyButton.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    TextEditingController demo = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: 500,
            height: 900,
            decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/image/img4.jpg"),
                    alignment: Alignment.topCenter)),
            child: Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Column(children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Pleace, Sign Up",
                      style: TextStyle(
                        fontFamily: "mihir2",
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Email",
                        fillColor: txt,
                        filled: true,
                        prefixIcon: const Icon(Icons.email_rounded),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "  Password",
                        fillColor: txt,
                        filled: true,
                        prefixIcon: const Icon(Icons.password),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: MyButton(
                    icon: Icons.admin_panel_settings_rounded,
                    Btname: "Continue >",
                    ontap: () {
                      Get.offAll(SignupPage());
                    },
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
