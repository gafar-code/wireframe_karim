import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../helper.dart';
import '../../widgets/custom_app_bar.dart';

part 'menu_3_isi.dart';

class Menu3Page extends StatelessWidget {
  final List<String> items;
  const Menu3Page({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: 'Menu 3', onTap: () => back(context)),
            SizedBox(
              height: 372,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 24),
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (_, index) => _buildItem(context, index),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildItem(context, index) {
    return Column(
        children: List.generate(
      3,
      (index) => Padding(
        padding: const EdgeInsets.only(right: 24, top: 24),
        child: Material(
          color: Colors.grey.withOpacity(0.3),
          child: InkWell(
            onTap: () => go(context, const Menu3Isi()),
            child: const SizedBox(
              height: 100,
              width: 100,
            ),
          ),
        ),
      ),
    ));
  }
}
