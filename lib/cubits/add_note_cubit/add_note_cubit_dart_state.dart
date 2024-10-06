part of 'add_note_cubit_dart_cubit.dart';

@immutable
sealed class AddNoteCubitDartState {}

final class AddNoteInitial extends AddNoteCubitDartState {}

final class AddNoteLoading extends AddNoteCubitDartState {}

final class AddNoteSuccess extends AddNoteCubitDartState {}

final class AddNoteFailure extends AddNoteCubitDartState {
  final String errMessage;

  AddNoteFailure({required this.errMessage});
}
