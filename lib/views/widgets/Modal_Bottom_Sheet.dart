import 'package:flutter/material.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/views/widgets/Custom_Text_field.dart';
import 'package:notes_app/views/widgets/Custom_button.dart';

class Add_note_bottom_sheet extends StatelessWidget {
  const Add_note_bottom_sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: "Title",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: "Content",
              maxlines: 5,
            ),
            SizedBox(
              height: 16,
            ),
            Custom_Buttom()
          ],
        ),
      ),
    );
  }
}
