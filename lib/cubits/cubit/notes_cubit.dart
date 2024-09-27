import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/models/note_view.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteView>? notes;
  fetchnotedata() async {
    {
      var notesbox = Hive.box<NoteView>(knotebox);
      notes = notesbox.values.toList();
    }
  }
}
