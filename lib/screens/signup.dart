import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/colors.dart';
import 'package:flutter_todo_app/constants/space.dart';
import 'package:flutter_todo_app/constants/text_style.dart';
import 'package:flutter_todo_app/widget/main_button.dart';
import 'package:flutter_todo_app/widget/text_fild.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUpScreen> {
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPh = TextEditingController();
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
              const SpaceVH(height: 10.0),
              const Text(
                'Use seu CPF/CNPJ para criar seu primeiro acesso',
                style: headline3,
              ),
              const SpaceVH(height: 40.0),
              textFild(
                controller: userName,
                image: 'user.svg',
                keyBordType: TextInputType.name,
                hintTxt: 'Nome completo',
              ),
              textFild(
                controller: userEmail,
                keyBordType: TextInputType.emailAddress,
                image: 'user.svg',
                hintTxt: 'CPF/CNPJ',
              ),
              textFild(
                controller: userPh,
                image: 'user.svg',
                keyBordType: TextInputType.phone,
                hintTxt: 'E-mail',
              ),
              textFild(
                controller: userPass,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Senha',
              ),
              const SpaceVH(height: 40.0),
              Mainbutton(
                onTap: () {},
                text: 'CADASTRAR',
                btnColor: blueButton,
              ),
              const SpaceVH(height: 10.0),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Já possuí uma conta? ',
                      style: headline.copyWith(
                        fontSize: 14.0,
                      ),
                    ),
                    TextSpan(
                      text: ' Faça login',
                      style: headlineDot.copyWith(
                          fontSize: 14.0, color: const Color(0xffF5591F)),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
