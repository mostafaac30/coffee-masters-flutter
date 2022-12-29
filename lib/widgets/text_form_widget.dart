import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class textForm extends StatelessWidget {
  Widget suffixIcon;
  String hintText;
  bool obscureText;
  textForm(
      {super.key,
      required this.suffixIcon,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[600]?.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16),
          ),
          // ignore: prefer_const_constructors
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              contentPadding: const EdgeInsets.symmetric(vertical: 17),
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white, fontSize: 20),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
              ),
            ),
            obscureText: obscureText,
          ),
        ),
      ),
    );
  }
}
