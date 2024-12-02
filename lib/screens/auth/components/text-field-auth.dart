import 'package:flutter/material.dart';

class TextFieldAuth extends StatelessWidget {
  final String label;
  final String hintText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  const TextFieldAuth(
      {super.key,
      this.controller,
      required this.label,
      required this.hintText,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, color: Colors.black87),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white, // Màu nền của TextField
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 4), // Vị trí bóng đổ
              ),
            ],
          ),
          child: TextField(
            keyboardType: keyboardType,
            controller: controller,
            obscureText: keyboardType == TextInputType.visiblePassword,
            decoration: InputDecoration(
              // labelText: 'Email Address',

              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: Colors.purple,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: Colors.purple,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
