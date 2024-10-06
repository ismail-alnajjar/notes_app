import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_note_cubit_dart_state.dart';

class AddNoteCubitDartCubit extends Cubit<AddNoteCubitDartState> {
  AddNoteCubitDartCubit() : super(AddNoteCubitDartInitial());
}
