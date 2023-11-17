import 'package:flutter/material.dart';
import 'package:projeqta/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final String? userName = FirebaseAuth.instance.currentUser?.displayName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Homepage"),
      ),
      body: Column(
        children: [
          const Text("Hello User"),
          ElevatedButton(
              onPressed: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const LoginScreen();
                }));
              },
              child: const Text("Sign Out"))
        ],
      ),
    );
  }
}
