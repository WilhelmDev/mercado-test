import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Assets {
  static const String logo = 'assets/images/MM-large.svg';
  static const String googleIcon = 'assets/icons/google.svg';
  static const String appleIcon = 'assets/icons/apple.svg';
  static const String facebookIcon = 'assets/icons/facebook.svg';
  static const String emailIcon = 'assets/icons/email.svg';
  static const String logoBase = 'assets/images/MM.svg';
  static const String lockIcon = 'assets/icons/lock.svg';
  static const String squareImage = 'assets/images/square.svg';
  static const String userIcon = 'assets/icons/person.svg';

  static SvgPicture svgAsset(String assetName, {double? width, double? height, Color? color}) {
    return SvgPicture.asset(
      assetName,
      width: width,
      height: height,
      color: color,
    );
  }
}