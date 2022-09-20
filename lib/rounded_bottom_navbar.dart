library rounded_bottom_navbar;

import 'package:flutter/material.dart';

class RoundedBottomNavBar extends StatefulWidget {
  const RoundedBottomNavBar({super.key, required this.items});
  final List<BottomNavigationBarItem> items;

  @override
  State<RoundedBottomNavBar> createState() => _RoundedBottomNavBarState();
}

class _RoundedBottomNavBarState extends State<RoundedBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(
            30,
          ),
          topLeft: Radius.circular(
            30,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            spreadRadius: 0,
            blurRadius: 10,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          items: widget.items,
        ),
      ),
    );
  }
}
