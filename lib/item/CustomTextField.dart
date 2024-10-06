import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hint, this.max = 1, this.onSaved});
  final String hint;
  final int max;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          TextFormField(
            onSaved: onSaved,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Field is required';
              } else {
                return null;
              }
            },
            cursorColor: kPrimaryColor,
            maxLines: max,
            decoration: InputDecoration(
                hintText: hint,
                enabledBorder: buildborder(Colors.white),
                errorBorder: buildborder(Colors.red),
                focusedErrorBorder: buildborder(Colors.red),
                focusedBorder: buildborder(kPrimaryColor)),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
