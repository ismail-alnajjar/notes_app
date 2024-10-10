import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit_dart_cubit.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/view/NotesView.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(notemodelAdapter());
  Bloc.observer = SimpleBlocObserver();

  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const notesApp());
}

class notesApp extends StatelessWidget {
  const notesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
