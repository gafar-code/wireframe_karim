import 'package:flutter/material.dart';
import '../theme.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> items;
  final int selectedIndex;
  final Function(int) onTap;
  const CustomTabBar({Key? key, required this.selectedIndex, required this.items, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: items.length,
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () => onTap(index),
            child: Center(
              child: Container(
                width: 120,
                margin: const EdgeInsets.only(left: 24),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
                  child: Text(
                    items[index],
                    style: TextStyle(
                      color: (selectedIndex == index) ? primaryColor : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
