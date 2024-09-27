import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/models/note_view.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchnotedata() async {
    {
      try {
        var notesbox = Hive.box<NoteView>(knotebox);
        List<NoteView> notes = notesbox.values.toList();
        emit(Notessucces(notes: notes));
      } catch (e) {
        emit(Notesfailed(errmsg: e.toString()));
      }
    }
  }
}
