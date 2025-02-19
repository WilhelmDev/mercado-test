import 'package:flutter/material.dart';
import '../../widgets/auth/login_button.dart';
import '../../widgets/auth/social_login_button.dart';
import '../../../utils/assets.dart';

class LoginScreen extends StatelessWidget {
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
                SizedBox(height: 8),
                Text(
                  '¡Compra con seguridad,\nvende con rapidez!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 21, color: Color(0xFF1D1D1D), fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 40),
                Assets.svgAsset(Assets.logoBase, height: 86, width: 103),
                SizedBox(height: 40),
                Text(
                  'Inicia sesión o regístrate',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF2D2D2D)
                  ),
                ),
                SizedBox(height: 16),
                SocialLoginButton(
                  text: 'Continúa con Google',
                  icon: Assets.googleIcon,
                  onPressed: () {},
                ),
                SizedBox(height: 12),
                SocialLoginButton(
                  text: 'Continúa con Apple',
                  icon: Assets.appleIcon,
                  onPressed: () {},
                ),
                SizedBox(height: 12),
                SocialLoginButton(
                  text: 'Continúa con Facebook',
                  icon: Assets.facebookIcon,
                  onPressed: () {},
                ),
                SizedBox(height: 12),
                SocialLoginButton(
                  text: 'Regístrate con tu email',
                  icon: Assets.emailIcon,
                  onPressed: () {},
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'O inicia con',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                LoginButton(
                  text: 'Email y contraseña',
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