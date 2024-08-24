import 'package:flutter/material.dart';
import '../utlis/app_styles.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.content, this.textColor, this.backgroundColor});
  final String content;
  final Color? textColor, backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: backgroundColor ?? Colors.white,
          elevation: 0,
        ),
        onPressed: () {},
        child: Text(
          content,
          style: AppStyles.styleSemiBold18.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
