import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/item/Add_Notes_bottom_sheet.dart';
import 'package:notes_app/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: Colors.white,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNotesBottomSheet();
              });
        },
        child: const Icon(
          FontAwesomeIcons.add,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
