import 'package:flutter/material.dart';
import 'package:wireframe_karim/configurator.dart';
import 'package:wireframe_karim/helper.dart';
import 'package:wireframe_karim/theme.dart';

import '../menu_1/menu_1.dart';
import '../menu_2/menu_2.dart';
import '../menu_3/menu_3.dart';
import '../menu_4/menu_4.dart';

part 'widgets/header.dart';
part 'widgets/tab_menu.dart';
part 'widgets/content.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final List<String> tabMenus = [
  'Menu 1',
  'Menu 2',
  'Menu 3',
  'Menu 4',
];

final List<String> tabBar = ['Materi Satu', 'Materi Dua', 'Materi tiga'];
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

List<Widget> pages = [
  Menu1Page(tabItems: tabBar),
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HomeHeader(),
            Expanded(
                child: ScrollConfiguration(
              behavior: ScrollWithoutEffect(),
              child: ListView(
                padding: const EdgeInsets.only(bottom: 120),
                children: [
                  HomeTabMenu(
                    menus: tabMenus,
                    onTap: (index) {
                      go(context, pages[index]);
                    },
                  ),
                  const HomeContent(),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
