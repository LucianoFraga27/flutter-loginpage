import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final Icon icon;

  const LoginTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              hintText: hintText,
              fillColor: const Color.fromARGB(255, 150, 197, 255),
              filled: true,
              prefixIcon: icon,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 240, 246, 255),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 224, 235, 251),
                ),
              ))),
    );
  }
}
