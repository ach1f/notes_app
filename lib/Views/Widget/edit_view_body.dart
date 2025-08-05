import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widget/custom_app_bar.dart';

import 'Custom Text/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(
            title: 'Edite', icon: Icons.check,
            
          ),
          SizedBox(height: 50,),
          CustemTextField(hint: 'Title',),
          SizedBox(height: 16,),
          CustemTextField(hint: 'Content',maxLines: 5,),
        ],
      ),
    );
  }
}
