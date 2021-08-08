import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class TaskTile extends StatelessWidget {
  final isChecked;
  final function;
  final label;

  TaskTile({this.isChecked, this.function, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2,horizontal: 6),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: kPrimaryColor),
      child: Hero(
        tag: 'textField',
        child: ListTile(
          title: Text(
            label,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          trailing: Theme(
            data: Theme.of(context).copyWith(
              unselectedWidgetColor: kAccentColor,
            ),
            child: Checkbox(
              activeColor: kAccentColor,
              value: isChecked,
              onChanged: function,
              shape: CircleBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
