import 'package:flutter/material.dart';
import 'package:wireframe_karim/theme.dart';

import '../../helper.dart';
import '../../widgets/custom_app_bar.dart';

part 'widgets/footer.dart';

class MenuDuaIsi extends StatefulWidget {
  const MenuDuaIsi({Key? key}) : super(key: key);

  @override
  State<MenuDuaIsi> createState() => _MenuDuaIsiState();
}

class _MenuDuaIsiState extends State<MenuDuaIsi> {
  final List<String> contents = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          CustomAppBar(title: '', onTap: () => back(context)),
          Expanded(
              child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 18, 0, 8),
                child: Text(
                  'Judul Materi',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const Text('Lorem ipsum deskripsi'),
              const SizedBox(height: 18),
              Image.asset(
                'assets/images/post.png',
                height: 190,
                fit: BoxFit.cover,
              ),
              ...List.generate(contents.length, (index) => _buildContent(contents[index])),
              const MenuDuaFooter(),
            ],
          )),
        ],
      )),
    );
  }

  _buildContent(String content) {
    return Column(children: [
      const SizedBox(height: 24),
      Text(
        content,
        style: const TextStyle(fontSize: 16),
      ),
    ]);
  }
}
