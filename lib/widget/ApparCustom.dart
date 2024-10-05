import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/widget/search_icon.dart';

class ApparCustom extends StatelessWidget {
  const ApparCustom({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        SearchIcon(
          icon: icon,
        )
      ],
    );
  }
}
