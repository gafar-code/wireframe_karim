import 'package:flutter/material.dart';
import 'package:wireframe_karim/pages/home/home_page.dart';
import 'package:wireframe_karim/pages/menu_dua/menu_dua.dart';
import 'package:wireframe_karim/pages/menu_satu/menu_satu.dart';
import 'package:wireframe_karim/pages/menu_tiga/menu_tiga.dart';
import 'package:wireframe_karim/widgets/custom_bottom_bar.dart';

import '../../theme.dart';

class DasboardPage extends StatefulWidget {
  const DasboardPage({Key? key}) : super(key: key);

  @override
  State<DasboardPage> createState() => _DasboardPageState();
}

class _DasboardPageState extends State<DasboardPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedIndex == 0 ? primaryColor : Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            IndexedStack(
              index: selectedIndex,
              children: const [
                HomePage(),
                MenuSatuPage(),
                MenuDuaPage(),
                MenuTiga(),
              ],
            ),
            CustomBottomBar(
                selectedIndex: selectedIndex,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                })
          ],
        ),
      ),
    );
  }
}
