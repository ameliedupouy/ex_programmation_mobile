import 'package:flutter/material.dart';

class Separateur extends StatelessWidget {
  const Separateur({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(color: Theme.of(context).dividerColor, thickness: 1),
        ),
        const SizedBox(width: 10),
        const Text('Or', style: TextStyle(color: Colors.grey, fontSize: 16)),
        const SizedBox(width: 10),
        Expanded(
          child: Divider(color: Theme.of(context).dividerColor, thickness: 1),
        ),
      ],
    );
  }
}
