import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxCallBack;
  final Function() longPressCallBack;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkBoxCallBack,
    required this.longPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          decorationThickness: 2.5,
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Checkbox(
        checkColor: Color(0XFF000000),
        fillColor: MaterialStateProperty.all(
          Color(0XFFF45D37),
        ),
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
