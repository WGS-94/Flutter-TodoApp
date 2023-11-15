import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/colors.dart';
import 'package:flutter_todo_app/constants/space.dart';
import 'package:flutter_todo_app/constants/text_style.dart';
import 'package:flutter_todo_app/screens/signup.dart';
import 'package:flutter_todo_app/widget/main_button.dart';
import 'package:flutter_todo_app/widget/text_fild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackBG,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SpaceVH(height: 50.0),
              Image.asset(
                "assets/images/Projeqta_byQQ_Branco_SemConceito_H.png",
                height: 57,
                width: 220,
              ),
              const SpaceVH(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Program de especificadores  ",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  GestureDetector(
                    child: const Text(
                      "Saiba mais",
                      style: TextStyle(fontSize: 18, color: Color(0xffF5591F)),
                    ),
                    onTap: () {
                      // Write Tap Code Here.
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const SignUpScreen(),
                      //     ));
                    },
                  )
                ],
              ),
              const SpaceVH(height: 60.0),
              textFild(
                controller: userName,
                image: 'user.svg',
                hintTxt: 'Username',
              ),
              textFild(
                controller: userPass,
                image: 'hide.svg',
                isObs: true,
                hintTxt: 'Password',
              ),
              const SpaceVH(height: 10.0),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: headline3,
                    ),
                  ),
                ),
              ),
              const SpaceVH(height: 30.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Mainbutton(
                      onTap: () {},
                      text: 'Sign in',
                      btnColor: blueButton,
                    ),
                    const SpaceVH(height: 15.0),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const SignUpScreen()));
                      },
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Don\'t have an account? ',
                            style: headline.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          TextSpan(
                            text: ' Sign Up',
                            style: headlineDot.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                        ]),
                      ),
                    )
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
