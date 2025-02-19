import 'package:flutter/material.dart';
import 'package:mercadomeet/utils/app_theme.dart';
import 'package:mercadomeet/utils/assets.dart';

class SocialLoginButton extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onPressed;

  const SocialLoginButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        padding: EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: AppColors.borderPurple),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.svgAsset(icon, height: 22, width: 22),
            SizedBox(width: 12),
            Text(
                text,
                style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF828282)
                )
            ),
          ],
        ),
      ),
    );
  }
}