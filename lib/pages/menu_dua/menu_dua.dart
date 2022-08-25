import 'package:flutter/material.dart';
import 'package:wireframe_karim/helper.dart';
import 'package:wireframe_karim/pages/menu_dua_isi/menu_dua_isi.dart';
import 'package:wireframe_karim/widgets/custom_app_bar.dart';

part 'widgets/header.dart';
part 'widgets/content.dart';

class MenuDuaPage extends StatefulWidget {
  const MenuDuaPage({Key? key}) : super(key: key);

  @override
  State<MenuDuaPage> createState() => _MenuDuaPageState();
}

class _MenuDuaPageState extends State<MenuDuaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const CustomAppBar(title: 'Menu dua'),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(bottom: 120),
              children: const [
                MenuDuaHeader(),
                Divider(
                  height: 0,
                  thickness: 1.5,
                ),
                MenuDuaContent()
              ],
            ),
          )
        ],
      )),
    );
  }
}
