import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'Views/notes_views.dart';
import 'constants.dart';
import 'models/note_model.dart';

void main() async {

  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home:  NotesViews(),
    );
  }
}

