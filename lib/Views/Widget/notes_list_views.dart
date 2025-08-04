
import 'package:flutter/material.dart';

import 'notes_item.dart';

class NoteListesViews extends StatelessWidget {
  const NoteListesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      padding: EdgeInsets.zero,
        itemBuilder: (context, index)
    {

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: NotesItem(),
      );
    });


  }
}