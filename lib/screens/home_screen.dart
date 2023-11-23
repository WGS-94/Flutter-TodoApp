import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projeqta/constants/colors.dart';
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
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: green700,
        foregroundColor: white,
        actions: [
          // ignore: avoid_unnecessary_containers
          Container(
              child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: const Icon(Icons.notifications),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: const Icon(Icons.notifications),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: const Icon(Icons.notifications),
              ),
              // Container(
              //   margin: const EdgeInsets.only(right: 10),
              //   child: SvgPicture.asset(
              //     'assets/icon/user.svg',
              //     height: 20.0,
              //     height: 20.0,
              //     color: white,
              //   ),
              // ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: const CircleAvatar(
                  // radius: 50.0,
                  // backgroundImage: AssetImage('assets/user_profile_image.jpg'),
                  backgroundColor: green800,
                  child: Icon(
                    Icons.account_circle,
                    color: white,
                  ),
                ),
              ),
            ],
          ))
        ],
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
