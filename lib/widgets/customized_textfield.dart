import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projeqta/constants/colors.dart';
import 'package:projeqta/constants/text_style.dart';

Widget customizedTextfield({
  required String hintTxt,
  required String image,
  // final bool? isPassword,
  required TextEditingController controller,
  bool isObs = false,
  TextInputType? keyBordType,
}) {
  return Container(
    height: 58.0,
    padding: const EdgeInsets.only(left: 20, right: 45),
    margin: const EdgeInsets.symmetric(
      horizontal: 20.0,
      vertical: 10.0,
    ),
    decoration: BoxDecoration(
      color: green700,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/icon/$image',
          height: 20.0,
          color: orange800,
        ),
        SizedBox(
          width: 270.0,
          child: TextField(
            keyboardType: keyBordType,
            // keyboardType: isPassword!
            //     ? TextInputType.visiblePassword
            //     : TextInputType.emailAddress,
            textAlignVertical: TextAlignVertical.center,
            obscureText: isObs,
            decoration: InputDecoration(
              // suffixIcon: isPassword
              //     ? IconButton(
              //         icon:
              //             const Icon(Icons.remove_red_eye, color: Colors.grey),
              //         onPressed: () {},
              //       )
              //     : null,
              border: InputBorder.none,
              hintText: hintTxt,
              hintStyle: hintStyle,
            ),
            style: headline2,
          ),
        ),
      ],
    ),
  );
}
