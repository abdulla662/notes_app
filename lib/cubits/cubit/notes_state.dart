part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class Notesloading extends NotesState {}

final class Notessucces extends NotesState {
  final List<NoteView> notes;

  Notessucces({required this.notes});
}

final class Notesfailed extends NotesState {
  final String errmsg;

  Notesfailed({required this.errmsg});
}
