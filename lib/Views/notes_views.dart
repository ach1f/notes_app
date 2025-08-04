

import 'package:flutter/material.dart';

import 'Widget/add_bottom_sheet.dart';
import 'Widget/note_view_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(context: context, builder: (context){
              return AddBottomshett();
            });
          },
        child: Icon(Icons.add),

      ),
      body: NotesViewBody(
      ),
    );
  }
}


