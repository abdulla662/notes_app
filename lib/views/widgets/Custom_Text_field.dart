import 'package:flutter/material.dart';
import 'package:notes_app/Constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxlines = 1});
  final String hint;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: BUild_Border(),
          enabledBorder: BUild_Border(),
          focusedBorder: BUild_Border(kPrimaryColor)),
    );
  }
}

OutlineInputBorder BUild_Border([Color]) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: Color ?? Colors.white));
