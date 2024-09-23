import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';

class AddNoteCubitCubit extends Cubit<AddNoteState> {
  AddNoteCubitCubit() : super(AddNoteInitial());
}
