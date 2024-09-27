import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_view.dart';
import 'package:notes_app/views/widgets/Custom_Note_Item.dart';
import 'package:notes_app/views/widgets/Custom_appbar.dart';
import 'package:notes_app/views/widgets/notes_listview.builder.dart';

class NotesviewBody extends StatefulWidget {
  const NotesviewBody({super.key});

  @override
  State<NotesviewBody> createState() => _NotesviewBodyState();
}

class _NotesviewBodyState extends State<NotesviewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchnotedata();
    super.initState();
  }

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
