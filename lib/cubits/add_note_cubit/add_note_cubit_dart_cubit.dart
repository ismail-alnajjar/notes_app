import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';

import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/constant.dart';

part 'add_note_cubit_dart_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(errMessage: e.toString()));
    }
  }
}
