import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff031956);
const kBackgroundColor = Color(0xFF344FA1);
const kAccentColor = Color(0xffEB05FF);

var kTextFieldStyle = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    filled: true,

    hintStyle: TextStyle(color: Colors.grey[800]),
    hintText: "Type your task here",
    fillColor: kPrimaryColor);
