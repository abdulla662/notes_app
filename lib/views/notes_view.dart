import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Modal_Bottom_Sheet.dart';
import 'package:notes_app/views/widgets/notesview_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Add_note_bottom_sheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: NotesviewBody(),
    );
  }
}
