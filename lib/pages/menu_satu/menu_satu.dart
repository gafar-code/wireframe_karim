import 'package:flutter/material.dart';
import 'package:wireframe_karim/widgets/custom_app_bar.dart';
import 'package:wireframe_karim/widgets/custom_materi_screen.dart';
import 'package:wireframe_karim/widgets/custom_tab_bar.dart';

class MenuSatuPage extends StatefulWidget {
  const MenuSatuPage({Key? key}) : super(key: key);

  @override
  State<MenuSatuPage> createState() => _MenuSatuPageState();
}

class _MenuSatuPageState extends State<MenuSatuPage> {
  late PageController _pageController;

  final List<String> tabBar = ['Materi Satu', 'Materi Dua', 'Materi tiga'];
  final List<String> contents = [
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
  void initState() {
    _pageController = PageController();
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
            items: tabBar,
            selectedIndex: selectedIndex,
            onTap: (index) {
              _pageController.jumpToPage(index);
            },
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) => setState(() => selectedIndex = index),
              children: [
                CustomMateriScreen(contents: contents),
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
