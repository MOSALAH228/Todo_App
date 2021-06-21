import 'package:flutter/material.dart';
import '../widgets/tasks_list.dart';
import './add_task_screen.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFD47757),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            // isScrollControlled: true,
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
        backgroundColor: Color(0XFFDFAC97),
        elevation: 5,
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 40,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 65, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color(0XFFDFAC97),
                  maxRadius: 30,
                  child: Icon(
                    Icons.list,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                SizedBox(
                  height: 8.5,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 60.0),
              decoration: BoxDecoration(
                color: Color(0XFFB4B090),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200),
                    topRight: Radius.circular(200)),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
