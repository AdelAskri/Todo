import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class TaskBottomSheet extends StatelessWidget {
  final function;

  TaskBottomSheet(this.function);

  @override
  Widget build(BuildContext context) {
    String todoLabel = '';
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 20,
      ),
      child: Column(
        children: [
          Text(
            'Add Task',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w400,
              color: kPrimaryColor,
            ),
          ),
          TextField(
            autofocus: true,
            onChanged: (value) {
              todoLabel = value;
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith(
                (states) => kPrimaryColor,
              ),
            ),
            onPressed: () {
              function(todoLabel);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
