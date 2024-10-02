import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Notesitem extends StatelessWidget {
  const Notesitem({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 22, left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFFCC80),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(fontSize: 26, color: Colors.black),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              child: Text('Build your career With Ismail alnajjar',
                  style: TextStyle(fontSize: 16, color: Colors.black45)),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 26,
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 24),
            child: Text('May21 2024',
                style: TextStyle(fontSize: 16, color: Colors.black45)),
          )
        ],
      ),
    );
  }
}
