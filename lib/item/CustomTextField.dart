import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hint, this.max = 1});
  final String hint;
  final int max;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          TextField(
            cursorColor: kPrimaryColor,
            maxLines: max,
            decoration: InputDecoration(
                hintText: hint,
                enabledBorder: buildborder(Colors.white),
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
