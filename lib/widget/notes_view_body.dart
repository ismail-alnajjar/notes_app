import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/item/NotesListView.dart';
import 'package:notes_app/view/EditorNotesView.dart';
import 'package:notes_app/widget/ApparCustom.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditorNotesView();
        }));
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            ApparCustom(
              title: 'Notes',
              icon: FontAwesomeIcons.search,
            ),
            Expanded(child: Noteslistview()),
          ],
        ),
      ),
    );
  }
}
