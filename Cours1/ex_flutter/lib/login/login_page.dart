import 'package:flutter/material.dart';
import 'email.dart';
import 'bouton_continuer.dart';
import 'separateur.dart';
import 'bouton_continueravec.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login in or sign up',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Email(
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),
            const SizedBox(height: 24),

            SizedBox(
              width: 250,
              child: BoutonContinuer(
                onPressed: _email.isNotEmpty ? () {} : null,
              ),
            ),
            const SizedBox(height: 40),
            const Separateur(),
            const SizedBox(height: 40),

            SizedBox(
              width: 250,
              child: BoutonContinuerAvec(
                label: 'Apple',
                iconPath: 'assets/apple_logo.svg',
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 250,
              child: BoutonContinuerAvec(
                label: 'Google',
                iconPath: 'assets/google_logo.svg',
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 250,
              child: BoutonContinuerAvec(
                label: 'Facebook',
                iconPath: 'assets/facebook_logo.svg',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
