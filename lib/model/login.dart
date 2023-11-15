import 'package:flutter/material.dart';
// import 'package:flutter_todo_app/constants/colors.dart';
import 'package:flutter_todo_app/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          height: 200,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
            color: Color(0xffF5591F),
            gradient: LinearGradient(
              colors: [(Color(0xffF5591F)), Color(0xffF2861E)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Image.asset(
                  "assets/images/Projeqta_byQQ_Branco_SemConceito_H.png",
                  height: 57,
                  width: 220,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, top: 20),
                alignment: Alignment.bottomRight,
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )
            ],
          )),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
          ),
          child: const TextField(
            cursorColor: Color(0xffF5591F),
            decoration: InputDecoration(
              icon: Icon(
                Icons.email,
                color: Color(0xffF5591F),
              ),
              hintText: "Usuário",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xffEEEEEE),
          ),
          child: const TextField(
            cursorColor: Color(0xffF5591F),
            decoration: InputDecoration(
              focusColor: Color(0xffF5591F),
              icon: Icon(
                Icons.vpn_key,
                color: Color(0xffF5591F),
              ),
              hintText: "Senha",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              // Write Click Listener Code Here
            },
            child: const Text(
              "Forget Password?",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            // Write Click Listener Code Here.
          },
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 0),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [(Color(0xffF5591F)), Color(0xffF2861E)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
            ),
            child: const Text(
              "LOGIN",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't Have Any Account?  ",
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                child: const Text(
                  "Register Now",
                  style: TextStyle(color: Color(0xffF5591F)),
                ),
                onTap: () {
                  // Write Tap Code Here.
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ));
                },
              )
            ],
          ),
        )
      ],
    )));
  }
}
