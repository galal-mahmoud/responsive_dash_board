import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utlis/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xff4EB7F2),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular16.copyWith(
          color: const Color(0xffAAAAAA)
        ),
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(
          color: Color(0xffFAFAFA)
        )
      );
  }
}
