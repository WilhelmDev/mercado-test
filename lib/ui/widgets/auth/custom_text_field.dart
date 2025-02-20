import 'package:flutter/material.dart';
import 'package:mercadomeet/utils/app_theme.dart';
import '../../../utils/assets.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String prefixIcon;
  final bool obscureText;
  final String? typeField;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.obscureText = false,
    this.typeField,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(fontSize: 16, color: Color(0xFF575D6D)),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xFF575D6D)),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Assets.svgAsset(prefixIcon, width: 24, height: 24),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Color(0xFF3A3A5F)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Color(0xFFE0E0E0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.purpleButton),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 14),
      ),
    );
  }
}