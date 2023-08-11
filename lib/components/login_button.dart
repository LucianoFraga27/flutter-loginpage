import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final Function()? onTap;

  const LoginButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 180,
        height: 50,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(237, 151, 38, 140),
            Color.fromARGB(255, 151, 38, 140),
          ]),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
            child: Text(
          "Entrar",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 16),
        )),
      ),
    );
  }
}
