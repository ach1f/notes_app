import 'dart:ffi';

import 'package:flutter/material.dart';

class CustemTextField extends StatelessWidget {
  const CustemTextField({super.key, required this.hint, this.maxLines = 1});

  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxLines,
      decoration: InputDecoration(

        hintText: hint,
        border: buildBorder(),
        focusedBorder: buildBorder(Colors.cyanAccent)
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(

        borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: color ?? Colors.white)
      );
  }
}
