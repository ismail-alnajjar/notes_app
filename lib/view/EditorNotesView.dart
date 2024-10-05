import 'package:flutter/material.dart';
import 'package:notes_app/widget/ApparCustom.dart';

class EditorNotesView extends StatelessWidget {
  const EditorNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            ApparCustom(
              title: 'Edit Notes',
              icon: Icons.check,
            ),
          ],
        ),
      ),
    );
  }
}
