import 'package:flutter/material.dart';
import 'package:football_app/app/football_app.dart';
import 'package:football_app/data/locator/locator.dart';

void main() {
  Locator.setUp();
  runApp(const FootballApp());
}
