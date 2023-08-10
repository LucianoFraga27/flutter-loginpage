import 'package:flutter/material.dart';
import 'package:loginpage/components/login_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controller
  final userNameController = TextEditingController();
  final userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 246, 255),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 70),
            // logo
            Center(child: Icon(Icons.library_books, size: 100)),
            SizedBox(height: 50),

            // welcome

            Text(
              "Welcome back you've been missed!",
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
            const SizedBox(height: 25),

            // username textfield
            LoginTextField(
              controller: userNameController,
              hintText: "Email",
              obscureText: false,
              icon: const Icon(Icons.email, color: Colors.black),
            ),
            const SizedBox(height: 10),
            // password textfield
            LoginTextField(
              controller: userPasswordController,
              hintText: "Password",
              obscureText: true,
              icon: const Icon(Icons.lock, color: Colors.black),
            ),
            // forgot password?

            //sign in button

            // or continue with

            // google

            // not a member ? register now
          ],
        ),
      ),
    );
  }
}
