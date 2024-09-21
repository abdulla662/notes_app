import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/Custom_Note_Item.dart';
import 'package:notes_app/views/widgets/Custom_appbar.dart';
import 'package:notes_app/views/widgets/notes_listview.builder.dart';

class NotesviewBody extends StatelessWidget {
  const NotesviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppbar(
            titletext: "Notes",
            icon: const Icon(Icons.search),
          ),
          const Expanded(
            child: Note_Item_builder(),
          )
        ],
      ),
    );
  }
}
