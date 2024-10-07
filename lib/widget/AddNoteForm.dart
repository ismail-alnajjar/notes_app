import 'package:flutter/material.dart';
import 'package:notes_app/item/CustomBotton.dart';
import 'package:notes_app/item/CustomTextField.dart';

class addNoteForm extends StatefulWidget {
  const addNoteForm({
    super.key,
  });

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

class _addNoteFormState extends State<addNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          CustomTextField(
            hint: 'Contant',
            max: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          CustomBotton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
