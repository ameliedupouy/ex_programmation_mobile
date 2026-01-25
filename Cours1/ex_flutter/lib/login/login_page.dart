import 'package:flutter/material.dart';
import 'email.dart';
import 'bouton_continuer.dart';
import 'separateur.dart';
import 'bouton_continueravec.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Email(),
            const SizedBox(height: 16),
            const BoutonContinuer(onPressed: null),
            const Separateur(),
            BoutonContinuerAvec(
              label: 'Google',
              iconPath: 'assets/google_logo.svg',
              onPressed: () {
                //rajouter plus tard ce que fera le bouton
              },
            ),
          ],
        ),
      ),
    );
  }
}
