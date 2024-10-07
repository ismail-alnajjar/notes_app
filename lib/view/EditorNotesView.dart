import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/item/CustomTextField.dart';
import 'package:notes_app/widget/ApparCustom.dart';

class EditorNotesView extends StatelessWidget {
  const EditorNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const ApparCustom(
              title: 'Edit Notes',
              icon: FontAwesomeIcons.check,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            CustomTextField(
              hint: 'Content',
              max: 5,
            )
          ],
        ),
      ),
    );
  }
}
