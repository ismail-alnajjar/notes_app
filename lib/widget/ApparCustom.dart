import 'package:flutter/material.dart';
import 'package:notes_app/widget/search_icon.dart';

class ApparCustom extends StatelessWidget {
  const ApparCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        SearchIcon()
      ],
    );
  }
}
