import 'package:flutter/material.dart';
import 'package:projeqta/constants/colors.dart';
import 'package:projeqta/constants/space.dart';
import 'package:projeqta/constants/text_style.dart';
import 'package:projeqta/widgets/customized_button.dart';
import 'package:projeqta/widgets/customized_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cpfcnpjController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SpaceVH(height: 50.0),
              Image.asset(
                "assets/Projeqta_byQQ_Branco_SemConceito_H.png",
                height: 57,
                width: 250,
              ),
              const SpaceVH(height: 10.0),
              const Text(
                'Use seu CPF/CNPJ para criar seu primeiro acesso',
                style: headline3,
              ),
              const SpaceVH(height: 30.0),
              customizedTextfield(
                controller: _usernameController,
                image: 'user.svg',
                keyBordType: TextInputType.name,
                hintTxt: 'Nome completo',
              ),
              customizedTextfield(
                controller: _cpfcnpjController,
                keyBordType: TextInputType.emailAddress,
                image: 'user.svg',
                hintTxt: 'CPF/CNPJ',
              ),
              customizedTextfield(
                controller: _emailController,
                image: 'user.svg',
                keyBordType: TextInputType.phone,
                hintTxt: 'E-mail',
              ),
              customizedTextfield(
                controller: _passwordController,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Senha',
              ),
              const SpaceVH(height: 30.0),
              CustomizedButton(
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
