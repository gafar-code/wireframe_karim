import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wireframe_karim/configurator.dart';
import 'package:wireframe_karim/data/tabmenu.dart';
import 'package:wireframe_karim/helper.dart';
import 'package:wireframe_karim/theme.dart';

import '../menu_1/menu_1.dart';
import '../menu_2/menu_2.dart';
import '../menu_3/menu_3.dart';
import '../menu_4/menu_4.dart';

part 'widgets/content.dart';
part 'widgets/header.dart';
part 'widgets/tab_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

int selectedIndex = 0;

List<Widget> pages = [
  const Menu1Page(),
  const Menu2Page(items: ['Topik 1', 'Topic 2']),
  const Menu3Page(items: [
    'Item',
    'Item',
    'Item',
    'Item',
    'Item',
    'Item',
    'Item',
    'Item',
    'Item',
    'Item',
    'Item',
    'Item',
  ]),
  const Menu4Page(items: [
    'Topik satu',
    'Topic dua',
    'Topic tiga',
  ]),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HomeHeader(),
            Expanded(
                child: ScrollConfiguration(
              behavior: ScrollWithoutEffect(),
              child: Container(
                color: Colors.white,
                child: ListView(
                  padding: const EdgeInsets.only(bottom: 120),
                  children: [
                    HomeTabMenu(
                      onTap: (index) {
                        go(context, pages[index]);
                      },
                    ),
                    const HomeContent(),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
