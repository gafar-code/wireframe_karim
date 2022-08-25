import 'package:flutter/material.dart';
import 'package:wireframe_karim/widgets/custom_materi_screen.dart';

import '../../helper.dart';
import '../../theme.dart';
import '../../widgets/custom_app_bar.dart';

part 'menu_4_isi.dart';
part 'menu_4_isi_isi.dart';

class Menu4Page extends StatelessWidget {
  final List<String> items;
  const Menu4Page({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: 'Menu 4', onTap: () => back(context)),
            Expanded(
                child: ListView.builder(
              padding: const EdgeInsets.only(top: 24),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return _buildItem(context, index);
              },
            ))
          ],
        ),
      ),
    );
  }

  _buildItem(context, index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(34, 12, 34, 24),
      child: Material(
        color: Colors.grey.withOpacity(0.06),
        child: InkWell(
          onTap: () => go(context, const Menu4Isi()),
          child: SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Material(
                  color: Colors.grey.withOpacity(0.3),
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Center(
                      child: Text(
                        "$index",
                        style: const TextStyle(color: primaryColor, fontSize: 17),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 24),
                Text(
                  'Topic ${index + 1}',
                  style: const TextStyle(fontSize: 17),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
