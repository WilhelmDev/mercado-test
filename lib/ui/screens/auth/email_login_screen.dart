import 'package:flutter/material.dart';
import 'package:mercadomeet/utils/app_theme.dart';
import '../../../utils/assets.dart';
import '../../widgets/auth/custom_text_field.dart';
import '../../widgets/auth/login_button.dart';

class EmailLoginScreen extends StatelessWidget {
  const EmailLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 40),
                Assets.svgAsset(Assets.logo, height: 31),
                SizedBox(height: 24),
                Text(
                  '¡Bienvenido!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Color(0xFF5B5B5B)),
                ),
                Text(
                  'Al marketplace',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 29, color: AppColors.purpleButton, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 40),
                Assets.svgAsset(Assets.logoBase, height: 86, width: 103),
                SizedBox(height: 40),
                Text(
                  'Inicia sesión',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9F9F9F)
                  ),
                ),
                SizedBox(height: 16),
                CustomTextField(
                  hintText: 'Email',
                  prefixIcon: Assets.emailIcon,
                ),
                SizedBox(height: 12),
                CustomTextField(
                  hintText: 'Contraseña',
                  prefixIcon: Assets.lockIcon,
                  obscureText: true,
                ),
                SizedBox(height: 24),
                LoginButton(
                  text: 'Continuar',
                  onPressed: () {},
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}