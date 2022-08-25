import 'package:flutter/material.dart';

import '../theme.dart';

class CustomBottomBar extends StatelessWidget {
  final Function(int) onTap;
  final int selectedIndex;
  const CustomBottomBar({Key? key, required this.onTap, required this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> menu = {
      'Home': 'assets/icons/ic_br_home.png',
      'Menu Satu': 'assets/icons/ic_br_menu1.png',
      'Menu Dua': 'assets/icons/ic_br_menu2.png',
      'Menu Tiga': 'assets/icons/ic_br_menu3.png',
    };
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
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
                menu.length,
                (index) => _buildMenuItem(
                      menu.keys.elementAt(index),
                      menu.values.elementAt(index),
                      index,
                    )),
          ),
        ),
      ),
    );
  }

  _buildMenuItem(String title, String icon, int index) {
    return InkWell(
      onTap: () => onTap(index),
      child: SizedBox(
        height: 60,
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              icon,
              height: 40,
              width: 40,
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(fontSize: 12, color: (selectedIndex == index) ? primaryColor : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
