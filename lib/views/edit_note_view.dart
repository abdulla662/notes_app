import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Custom_Text_field.dart';
import 'package:notes_app/views/widgets/Custom_appbar.dart';
import 'package:notes_app/views/widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            CustomAppbar(
              titletext: "Edit Note",
              icon: Icon(Icons.check),
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextField(hint: "Title"),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: "Content",
              maxlines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
