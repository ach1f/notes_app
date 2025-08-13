

import 'package:flutter/material.dart';

class CustemTextField extends StatelessWidget {
  const CustemTextField({super.key, required this.hint, this.maxLines = 1, this.onSaved});

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true ) {
          return 'Field is required' ;
        } else {
          return null;
        }
      },
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
