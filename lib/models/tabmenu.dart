import 'package:flutter/cupertino.dart';

class TabMenuModel {
  final int id;
  final String title;
  final TextStyle? titleStyle;
  final String image;
  final BorderRadius borderRadius;
  const TabMenuModel({
    required this.id,
    required this.title,
    required this.image,
    required this.borderRadius,
    this.titleStyle,
  });
}
