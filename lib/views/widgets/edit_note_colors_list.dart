import 'package:flutter/material.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/models/note_view.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';

class Edit_notes_colorslist extends StatefulWidget {
  const Edit_notes_colorslist({super.key, required this.note});
  final NoteView note;
  @override
  State<Edit_notes_colorslist> createState() => _edit_notes_colorslistState();
}

class _edit_notes_colorslistState extends State<Edit_notes_colorslist> {
  late int currentindex;
  @override
  void initState() {
    currentindex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentindex = index;
                widget.note.color = colors[index].value;
                setState(() {});
              },
              child: color_item(
                color: colors[index],
                ischoosen: currentindex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
