import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.05),
      ),
      height: 47,
      width: 47,
      child: const Center(
        child: Icon(
          Icons.search,
          size: 28,
        ),
      ),
    );
  }
}
