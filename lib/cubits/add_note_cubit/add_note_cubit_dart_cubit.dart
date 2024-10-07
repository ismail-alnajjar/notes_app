import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/constant.dart';

part 'add_note_cubit_dart_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitDartState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(note_model note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<note_model>(kNotesBox);
      emit(AddNoteSuccess());
      await notesBox.add(note);
    } catch (e) {
      AddNoteFailure(errMessage: e.toString());
    }
  }
}
