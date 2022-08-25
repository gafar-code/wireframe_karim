import 'package:flutter/material.dart';
import '../theme.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> items;
  final int selectedIndex;
  final Function(int) onTap;
  const CustomTabBar({Key? key, required this.selectedIndex, required this.items, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          items.length,
          (index) => InkWell(
                onTap: () => onTap(index),
                child: SizedBox(
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
              )),
    );
  }
}
