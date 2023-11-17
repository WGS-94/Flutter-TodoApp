import 'package:flutter/material.dart';
import 'package:projeqta/constants/colors.dart';
import 'package:projeqta/widgets/customized_textfield.dart';
import 'package:projeqta/widgets/customized_button.dart';
import 'package:projeqta/screens/forgot_passwor.dart';

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
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_sharp),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Welcome Back! Glad \nto see you again",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              CustomizedTextfield(
                myController: _emailController,
                hintText: "Usuário",
                isPassword: false,
              ),
              CustomizedTextfield(
                myController: _passwordController,
                hintText: "Senha",
                isPassword: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassword()));
                    },
                    child: const Text("Esqueceu a senha?",
                        style: TextStyle(
                          color: Color(0xff6A707C),
                          fontSize: 15,
                        )),
                  ),
                ),
              ),
              CustomizedButton(
                buttonText: "ENTRAR",
                buttonColor: Colors.black,
                textColor: Colors.white,
                onPressed: () async {
                  try {
                    debugPrint("error");
                  } catch (e) {
                    debugPrint("error");

                    // showDialog(
                    //     context: context,
                    //     builder: (context) => AlertDialog(
                    //             title: const Text(
                    //                 " Invalid Username or password. Please register again or make sure that username and password is correct"),
                    //             actions: [
                    //               ElevatedButton(
                    //                 child: const Text("Register Now"),
                    //                 onPressed: () {
                    //                   Navigator.push(
                    //                       context,
                    //                       MaterialPageRoute(
                    //                           builder: (context) =>
                    //                               const SignUpScreen()));
                    //                 },
                    //               )
                    //             ]));
                  }

                  // Navigator.push(context,
                  // MaterialPageRoute(builder: (_) => const LoginScreen()));
                },
              ),
              const SizedBox(
                height: 80,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(48, 8, 8, 8.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Não possuí uma conta?",
                        style: TextStyle(
                          color: white,
                          fontSize: 15,
                        )),
                    Text("  Registre-se",
                        style: TextStyle(
                            color: orange800,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
