import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const Email({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      style: const TextStyle(
        color: Colors.black, 
      ),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.email_outlined),
        hintText: 'Adresse email',
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFE5E7EB)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF2B8FA3)),
        ),
      ),
      onChanged: onChanged,
      keyboardType: TextInputType.emailAddress,
    );
  }
}
