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
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          iconPath,
          width: 22,
          height: 22,
        ),
        label: Text(
          'Continue with $label',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          side: const BorderSide(color: Color(0xFFD1D5DB)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
