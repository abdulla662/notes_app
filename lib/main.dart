import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_view.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Constants.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  await Hive.openBox(knotebox);
  Hive.registerAdapter(NoteViewAdapter());
  runApp(const notes_app());
}

class notes_app extends StatelessWidget {
  const notes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        home: const Scaffold(
          body: NotesView(),
        ),
      ),
    );
  }
}
