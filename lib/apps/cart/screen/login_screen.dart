import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Login'), elevation: 0),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(controller: email),
            const SizedBox(height: 20),
            TextFormField(controller: password),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {

              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
