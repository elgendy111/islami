import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';

class CustomIconButton extends StatelessWidget {
  VoidCallback onPressed;
  Widget icon;
  CustomIconButton({required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      color: AppTheme.lightPrimary,
    );
  }
}
