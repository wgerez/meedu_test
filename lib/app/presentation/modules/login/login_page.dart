import 'package:flutter/material.dart';

import 'controller/login_provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  onChanged: loginProvider.read.onEmailChanged,
                  decoration: const InputDecoration(hintText: 'Email'),
                ),
                TextField(
                  onChanged: loginProvider.read.onPasswordChanged,
                  decoration: const InputDecoration(hintText: 'Password'),
                ),
                ElevatedButton(
                  onPressed: loginProvider.read.submit,
                  child: const Text('Ingresar'),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
