import 'package:flutter/material.dart';
import 'add_screen.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff603827),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFE7AD97),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: AddScreen(),
      ),
    );
  }
}
