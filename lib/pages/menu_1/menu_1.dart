import 'package:flutter/material.dart';
import 'package:wireframe_karim/data/menu1.dart';

import '../../helper.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_materi_screen.dart';
import '../../widgets/custom_tab_bar.dart';

class Menu1Page extends StatefulWidget {
  const Menu1Page({Key? key}) : super(key: key);

  @override
  State<Menu1Page> createState() => _Menu1PageState();
}

class _Menu1PageState extends State<Menu1Page> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  int selectedIndex = 0;
  final List<String> tabBar = [
    'Materi Satu',
    'Materi Dua',
    'Materi tiga',
    'Materi empat',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          CustomAppBar(
            title: 'Menu 1',
            onTap: () => back(context),
          ),
          CustomTabBar(selectedIndex: selectedIndex, items: tabBar, onTap: (index) => _pageController.jumpToPage(index)),
          Expanded(
            child: PageView(
              controller: _pageController,
              reverse: true,
              onPageChanged: (index) => setState(() => selectedIndex = index),
              children: [
                CustomMateriScreen(contents: menu1MateriSatu),
                CustomMateriScreen(contents: menu1MateriDua),
                CustomMateriScreen(contents: menu1MateriTiga),
                CustomMateriScreen(contents: menu1MateriTiga),
              ],
            ),
          )
        ],
      )),
    );
  }
}
