import 'package:flutter/material.dart';
import 'package:notes_app/Constants.dart';

class Add_note_bottom_sheet extends StatelessWidget {
  const Add_note_bottom_sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          TextField(
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
                hintText: "Title",
                hintStyle: const TextStyle(color: kPrimaryColor),
                border: BUild_Border(),
                enabledBorder: BUild_Border(),
                focusedBorder: BUild_Border(kPrimaryColor)),
          )
        ],
      ),
    );
  }

  OutlineInputBorder BUild_Border([Color]) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Color ?? Colors.white));
}
