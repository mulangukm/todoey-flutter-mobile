import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: const Text('This is a task'),
      trailing: const Checkbox(value: false, onChanged: null),
    );
  }
}
