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
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            CustomAppbar(
              titletext: "Edit Note",
              icon: const Icon(Icons.check),
            ),
            const SizedBox(
              height: 50,
            ),
            const CustomTextField(hint: "Title"),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              hint: "Content",
              maxlines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
