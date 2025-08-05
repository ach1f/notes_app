
import 'package:flutter/material.dart';

import 'Custom Text/custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            CustemTextField(hint: 'Title',),
            SizedBox(height: 15),
            CustemTextField(hint: 'Content', maxLines: 5,),
            SizedBox(height: 80),
            CustomButtom(),
            SizedBox(height: 25),

          ],
        ),
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.cyanAccent,
        borderRadius: BorderRadius.circular(14)
      ),
      child: Center(child: Text('Add', style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold
      ),)),
      

    );
  }
}
