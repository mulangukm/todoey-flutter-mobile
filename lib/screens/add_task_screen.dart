import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AnimatedPadding(
        padding: MediaQuery.of(context).viewInsets,
        duration: const Duration(milliseconds: 100),
        curve: Curves.decelerate,
        child: Container(
          color: const Color(0xFF757575),
          child: Container(
            padding: const EdgeInsets.all(30.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              children: [
                const Text(
                  'Add Task',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 35.0,
                  ),
                ),
                const TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 5.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.lightBlueAccent,
                  child: TextButton(
                    onPressed: () {
                      // Add our task to the list
                    },
                    child: const Text(
                      'Add',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
