import 'package:flutter/material.dart';

import '../../helper.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_materi_screen.dart';
import '../../widgets/custom_tab_bar.dart';

class Menu1Page extends StatefulWidget {
  final List<String> tabItems;
  const Menu1Page({Key? key, required this.tabItems}) : super(key: key);

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

  final List<String> contents1 = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
  ];
  final List<String> contents2 = [
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout",
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout",
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout",
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout",
  ];
  final List<String> contents3 = [
    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,",
    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,",
    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,",
    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,",
  ];
  int selectedIndex = 0;
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
          CustomTabBar(selectedIndex: selectedIndex, items: widget.tabItems, onTap: (index) => _pageController.jumpToPage(index)),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) => setState(() => selectedIndex = index),
              children: [
                CustomMateriScreen(contents: contents1),
                CustomMateriScreen(contents: contents2),
                CustomMateriScreen(contents: contents3),
              ],
            ),
          )
        ],
      )),
    );
  }
}
