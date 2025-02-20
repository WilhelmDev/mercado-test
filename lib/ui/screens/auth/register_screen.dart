import 'package:flutter/material.dart';
import 'package:mercadomeet/ui/widgets/auth/custom_checkbox.dart';
import 'package:mercadomeet/utils/app_theme.dart';
import '../../../utils/assets.dart';
import '../../widgets/auth/custom_text_field.dart';
import '../../widgets/auth/login_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _acceptPrivacyPolicy = false;
  bool _acceptTermsAndConditions = true;

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
                SizedBox(height: 30),
                Assets.svgAsset(Assets.squareImage, height: 32, width: 42),
                SizedBox(height: 15),
                Text(
                  '¡Bienvenido!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Color(0xFF5B5B5B)),
                ),
                Text(
                  'Inicia tu registro',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 29, color: AppColors.purpleButton, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        hintText: 'Nombre',
                        prefixIcon: Assets.userIcon,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: CustomTextField(
                        hintText: 'Apellido',
                        prefixIcon: Assets.userIcon,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
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
                SizedBox(height: 12),
                CustomTextField(
                  hintText: 'Confirma tu contraseña',
                  prefixIcon: Assets.lockIcon,
                  obscureText: true,
                ),
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      CustomCheckbox(
                        text: '¿Aceptas las políticas de privacidad para registrarte?',
                        value: _acceptPrivacyPolicy,
                        onChanged: (value) => setState(() => _acceptPrivacyPolicy = value!),
                      ),
                      SizedBox(height: 12),
                      CustomCheckbox(
                        text: '¿Aceptas los términos y condiciones para registrarte?',
                        value: _acceptTermsAndConditions,
                        onChanged: (value) => setState(() => _acceptTermsAndConditions = value!),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
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