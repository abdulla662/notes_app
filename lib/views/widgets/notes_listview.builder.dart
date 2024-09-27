import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_view.dart';
import 'package:notes_app/views/widgets/Custom_Note_Item.dart';

class Note_Item_builder extends StatelessWidget {
  const Note_Item_builder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteView> noteslist =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: noteslist.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Note_Item());
            },
          ),
        );
      },
    );
  }
}
