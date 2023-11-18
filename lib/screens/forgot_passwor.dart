import 'package:flutter/material.dart';
import 'package:projeqta/constants/colors.dart';
import 'package:projeqta/constants/space.dart';
import 'package:projeqta/constants/text_style.dart';
import 'package:projeqta/screens/login_screen.dart';
import 'package:projeqta/screens/signup_screen.dart';
import 'package:projeqta/widgets/customized_textfield.dart';
import 'package:projeqta/widgets/customized_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 0.0),
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
              const SpaceVH(height: 70.0),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/Projeqta_byQQ_Branco_SemConceito_H.png",
                  height: 57,
                  width: 250,
                ),
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
              customizedTextfield(
                controller: _emailController,
                image: 'user.svg',
                hintTxt: 'E-mail',
              ),
              const SpaceVH(height: 20.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    CustomizedButton(
                      onTap: () {},
                      text: 'ENVIAR',
                      btnColor: blueButton,
                    ),
                    const SpaceVH(height: 15.0),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const LoginScreen()));
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
