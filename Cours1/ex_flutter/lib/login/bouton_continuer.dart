import 'package:flutter/material.dart';

class BoutonContinuer extends StatelessWidget {
  final VoidCallback? onPressed;
  const BoutonContinuer({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: const Text('Continuer'),
    );
  }
}
