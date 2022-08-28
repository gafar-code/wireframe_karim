import 'package:flutter/material.dart';
import 'package:wireframe_karim/data/bottombar.dart';

import '../theme.dart';

class CustomBottomBar extends StatelessWidget {
  final Function(int) onTap;
  final int selectedIndex;
  const CustomBottomBar({Key? key, required this.onTap, required this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Material(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(offset: const Offset(0, -1), blurRadius: 10, color: Colors.black.withOpacity(0.15)),
            ],
          ),
          height: 68,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(bottomBars.length, _buildMenuItem),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(int index) {
    return InkWell(
      onTap: () => onTap(index),
      child: SizedBox(
        height: 47,
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              bottomBars[index].icon,
              color: (selectedIndex == index) ? primaryColor : bottomBars[index].color,
              size: bottomBarIconSize,
            ),
            const SizedBox(height: 4),
            Text(
              bottomBars[index].title,
              style: TextStyle(fontSize: 12, color: (selectedIndex == index) ? activeBottomColor : bottomBars[index].color),
            ),
          ],
        ),
      ),
    );
  }
}
