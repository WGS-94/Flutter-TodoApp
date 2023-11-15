import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/colors.dart';
import 'package:flutter_todo_app/constants/space.dart';
import 'package:flutter_todo_app/constants/text_style.dart';
import 'package:flutter_todo_app/screens/signup.dart';
import 'package:flutter_todo_app/widget/main_button.dart';
import 'package:flutter_todo_app/widget/text_fild.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<ForgotPasswordScreen> {
  TextEditingController userEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green800,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: green700,
                    // border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_sharp,
                        color: gray200,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ),
              const SpaceVH(height: 50.0),
              Image.asset(
                "assets/images/Projeqta_byQQ_Branco_SemConceito_H.png",
                height: 57,
                width: 250,
              ),
              const SpaceVH(height: 15.0),
              Center(
                  child: SizedBox(
                      width: 350.0,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => const SignUpScreen()));
                        },
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text:
                                  'Programa de relacionamento para especificadores. ',
                              style: headline.copyWith(
                                fontSize: 14.0,
                              ),
                            ),
                            TextSpan(
                              text: ' Saiba mais',
                              style: headlineDot.copyWith(
                                  fontSize: 14.0,
                                  color: const Color(0xffF5591F)),
                            ),
                          ]),
                        ),
                      ))),
              const SpaceVH(height: 50.0),
              textFild(
                controller: userEmail,
                image: 'user.svg',
                hintTxt: 'E-mail',
              ),
              const SpaceVH(height: 20.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Mainbutton(
                      onTap: () {},
                      text: 'ENTRAR',
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
                            text: 'Lembra da senha? ',
                            style: headline.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          TextSpan(
                            text: ' Faça Login',
                            style: headlineDot.copyWith(
                                fontSize: 14.0, color: const Color(0xffF5591F)),
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
