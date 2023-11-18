import 'package:flutter/material.dart';
import 'package:projeqta/constants/colors.dart';
import 'package:projeqta/constants/space.dart';
import 'package:projeqta/constants/text_style.dart';
import 'package:projeqta/screens/signup_screen.dart';
// import 'package:projeqta/widgets/customized_textfield.dart';
// import 'package:projeqta/widgets/customized_button.dart';
import 'package:projeqta/screens/forgot_passwor.dart';
import 'package:projeqta/widgets/customized_button.dart';
import 'package:projeqta/widgets/customized_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SpaceVH(height: 50.0),
              Image.asset(
                "assets/Projeqta_byQQ_Branco_SemConceito_H.png",
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
              customizedTextfield(
                controller: _emailController,
                image: 'user.svg',
                hintTxt: 'Usuário',
              ),
              customizedTextfield(
                controller: _passwordController,
                image: 'hide.svg',
                isObs: true,
                hintTxt: 'Senha',
              ),
              const SpaceVH(height: 5.0),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const ForgotPassword()));
                    },
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
                    CustomizedButton(
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
