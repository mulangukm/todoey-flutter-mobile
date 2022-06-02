import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  @override
  State<TasksTile> createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(
        'This is a task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckboxState: (bool? checkboxState) {
          setState(() {
            isChecked = checkboxState!;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox(
      {required this.checkboxState, required this.toggleCheckboxState});

  final bool checkboxState;
  final Function(bool?) toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: toggleCheckboxState,
      activeColor: Colors.lightBlueAccent,
    );
  }
}
