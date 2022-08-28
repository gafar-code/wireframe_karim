import 'package:flutter/material.dart';
import 'package:wireframe_karim/widgets/custom_app_bar.dart';
import 'package:wireframe_karim/widgets/custom_materi_screen.dart';
import 'package:wireframe_karim/widgets/custom_tab_bar.dart';

import '../../data/menusatu.dart';

class MenuSatuPage extends StatefulWidget {
  const MenuSatuPage({Key? key}) : super(key: key);

  @override
  State<MenuSatuPage> createState() => _MenuSatuPageState();
}

class _MenuSatuPageState extends State<MenuSatuPage> {
  late PageController _pageController;

  final List<String> _tabBar = [
    'Materi Satu',
    'Materi Dua',
    'Materi tiga',
    'Materi empat',
    'Materi lima',
  ];

  int selectedIndex = 0;

  @override
  void initState() {
    _pageController = PageController();
    _tabBar.reversed;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const CustomAppBar(title: 'Menu Satu'),
          CustomTabBar(
            items: _tabBar,
            selectedIndex: selectedIndex,
            onTap: (index) {
              _pageController.jumpToPage(index);
            },
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              reverse: true,
              onPageChanged: (index) => setState(() => selectedIndex = index),
              children: [
                CustomMateriScreen(contents: menuSatuContentMateri1),
                CustomMateriScreen(contents: menuSatuContentMateri2),
                CustomMateriScreen(contents: menuSatuContentMateri3),
                CustomMateriScreen(contents: menuSatuContentMateri1),
                CustomMateriScreen(contents: menuSatuContentMateri2),
              ],
            ),
          )
        ],
      )),
    );
  }
}
