import 'package:flutter/material.dart';

void go(BuildContext context, Widget page) => Navigator.push(context, MaterialPageRoute(builder: (context) => page));
void goReplace(BuildContext context, Widget page) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => page));
void back(BuildContext context) => Navigator.pop(context);
