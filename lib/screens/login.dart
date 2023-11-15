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
      backgroundColor: green800,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                controller: userName,
                image: 'user.svg',
                hintTxt: 'Usuário',
              ),
              textFild(
                controller: userPass,
                image: 'hide.svg',
                isObs: true,
                hintTxt: 'Senha',
              ),
              const SpaceVH(height: 10.0),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Esqueceu a senha?',
                      style: headline3,
                    ),
                  ),
                ),
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
                            text: 'Não possuí uma conta? ',
                            style: headline.copyWith(
                              fontSize: 14.0,
                            ),
                          ),
                          TextSpan(
                            text: ' Registre-se',
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
