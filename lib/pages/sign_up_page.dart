import 'package:cinema_booking/pages/cinema_home_page.dart';
import 'package:cinema_booking/pages/login_page_view.dart';
import 'package:cinema_booking/utils/app_style.dart';
import 'package:cinema_booking/widgets/custom_text_field_login.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(AppStyle.appBackGroundColor),
        body: Form(
          key: formkey,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const Spacer(
              flex: 1,
            ),
            const Image(image: AssetImage("assets/images/ticket.png")),
            const SizedBox(
              height: 30,
            ),
            const CustomTextFieldLogin(hint: "Email"),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFieldLogin(
              hint: "Password",
              obscure: true,
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppStyle.btnColor),
              child: MaterialButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CinemaHomePage(),
                        ));
                  }
                },
                child: const Text("Sign up",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account ?",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(color: AppStyle.btnColor),
                    )),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
          ]),
        ),
      ),
    );
  }
}
