import 'package:flutter/material.dart';
import 'package:notes_app/item/CustomBotton.dart';
import 'package:notes_app/item/CustomTextField.dart';

class addNotes extends StatelessWidget {
  const addNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          CustomTextField(hint: 'Title'),
          CustomTextField(hint: 'Contant', max: 5),
          CustomBotton(),
        ],
      ),
    );
  }
}
