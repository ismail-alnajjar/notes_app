import 'package:flutter/material.dart';
import 'package:notes_app/item/NotesItem.dart';
import 'package:notes_app/item/NotesListView.dart';
import 'package:notes_app/widget/ApparCustom.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          ApparCustom(),
          Expanded(child: Noteslistview()),
        ],
      ),
    );
  }
}
