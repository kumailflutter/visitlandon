import 'package:flutter/material.dart';
import 'package:visitlandon/welcomescreen.dart';
import 'package:visitlandon/Detail_screen.dart';
import 'package:visitlandon/explore_screen.dart';
import 'package:visitlandon/more_screen.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: welcomescreen(),
  ));
}