import 'package:flutter/material.dart';
import 'package:loginpage/components/login_button.dart';
import 'package:loginpage/components/login_textfield.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controller
  final userNameController = TextEditingController();
  final userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.teal.shade400,
          Colors.teal.shade300,
          Colors.teal.shade300,
          Colors.teal.shade400,
          Colors.teal.shade600,
        ])),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 100),
              // logo
              Center(
                  child: Image.asset(
                "assets/img/logo_branco_sem_fundo.png",
                width: 140,
              )),
              SizedBox(height: 40),

              // welcome

              Text(
                "Olá! Faça login para o show começar.",
                style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16),
              ),
              const SizedBox(height: 25),

              // username textfield
              LoginTextField(
                controller: userNameController,
                hintText: "Email",
                obscureText: false,
                icon: const Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 151, 38, 140),
                ),
              ),
              const SizedBox(height: 10),
              // password textfield
              LoginTextField(
                controller: userPasswordController,
                hintText: "Password",
                obscureText: true,
                icon: const Icon(
                  Icons.lock,
                  color: Color.fromARGB(255, 151, 38, 140),
                ),
              ),
              const SizedBox(height: 10),
              // forgot password?
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      "Esqueceu a senha?",
                      style:
                          TextStyle(color: Color.fromARGB(255, 254, 254, 254)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              //sign in button
              LoginButton(onTap: () {})
              // or continue with

              // google

              // not a member ? register now
            ],
          ),
        ),
      ),
    );
  }
}
