// ignore: file_names
import 'package:flutter/material.dart';
import 'package:projeqta/constants/app_settings.dart';
import 'package:projeqta/constants/colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        width: AppSettings.screenWidth,
        height: AppSettings.screenHeight / 5,
        color: green700,
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Olá, Wilson',
                style: TextStyle(
                    fontSize: 18, color: white, fontWeight: FontWeight.bold),
              )
            ]));
  }
}
