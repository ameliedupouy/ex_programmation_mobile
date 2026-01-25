import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoutonContinuerAvec extends StatelessWidget {
  final String label;
  final String iconPath;
  final VoidCallback onPressed;

  const BoutonContinuerAvec({
    super.key,
    required this.label,
    required this.iconPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        iconPath,
        width: 24,
        height: 24,
      ),
      label: Text(label),
      style: OutlinedButton.styleFrom(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.grey),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
    );
  }
}
