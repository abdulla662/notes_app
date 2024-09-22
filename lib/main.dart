import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/models/note_view.dart';
import 'package:notes_app/views/notes_view.dart';

import 'Constants.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(knotebox);
  Hive.registerAdapter(NoteViewAdapter());
  runApp(const notes_app());
}

class notes_app extends StatelessWidget {
  const notes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: const Scaffold(
        body: NotesView(),
      ),
    );
  }
}
