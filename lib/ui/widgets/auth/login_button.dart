import 'package:flutter/material.dart';
import 'package:mercadomeet/utils/app_theme.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const LoginButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Color(0xFFBB3794))
        ),
        backgroundColor: AppColors.purpleButton,
        foregroundColor: Colors.white,
      ).copyWith(
        elevation: WidgetStateProperty.resolveWith<double>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return 2;
            }
            return 4;
          },
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 13,
        ),
      ),
    );
  }
}