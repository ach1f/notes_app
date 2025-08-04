
import 'package:flutter/material.dart';

import 'Custom Text/custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustemTextField(hint: 'Title',),
          SizedBox(height: 15),
          CustemTextField(hint: 'Content', maxLines: 5,),
        ],
      ),
    );
  }
}
