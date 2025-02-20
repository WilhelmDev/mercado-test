import 'package:flutter/material.dart';
import '../../../utils/app_theme.dart';

class CustomCheckbox extends StatelessWidget {
  final String text;
  final bool value;
  final Function(bool?) onChanged;

  const CustomCheckbox({
    super.key,
    required this.text,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF9F9F9F),
              ),
            ),
          ),
          SizedBox(width: 8),
          SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(
              value: value,
              onChanged: onChanged,
              activeColor: AppColors.purpleButton,
              fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
                if (states.contains(WidgetState.selected)) {
                  return AppColors.purpleButton;
                }
                return Color(0xFFC4C4C4); // Color cuando no está seleccionado
              }),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: BorderSide(color: Color(0xFFE5E5E5)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}