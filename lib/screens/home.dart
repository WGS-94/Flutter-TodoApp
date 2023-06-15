import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      prefixIcon: Icon(
                        Icons.search,
                        color: tdBlack,
                        size: 20,
                      ),
                      prefixIconConstraints: BoxConstraints(
                        maxHeight: 20,
                        maxWidth: 25,
                      ),
                      border: InputBorder.none,
                      hintText: 'Pesquisar...',
                      hintStyle: TextStyle(color: tdGrey),
                    ),
                  ))
            ],
          )),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      title: Center(
        child: Container(
          height: 40,
          width: 120,
          child: ClipRRect(
            // borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/Logo.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
