import 'package:flutter/material.dart';
import 'package:notes_app/item/TextField.dart';

class addNotes extends StatelessWidget {
  const addNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 24,
        ),
        CustomTextField(hint: 'Title'),
        CustomTextField(hint: 'Contant', max: 5),
      ],
    );
  }
}
