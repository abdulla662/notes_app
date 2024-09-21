part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteCubitLoading extends AddNoteState {}

final class AddNoteCubitSuccess extends AddNoteState {}

final class AddNoteCubitFailure extends AddNoteState {
  final String errmessage;
  AddNoteCubitFailure(this.errmessage);
}
