import 'package:flutter/material.dart';
import 'package:wireframe_karim/widgets/custom_app_bar.dart';

class MenuTiga extends StatelessWidget {
  const MenuTiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(title: 'Menu Tiga'),
        Expanded(
            child: ListView(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 60),
          children: [
            const Text(
              'Informasi',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 18),
            ...List.generate(4, (index) => _buildItem(context)),
          ],
        ))
      ],
    );
  }

  _buildItem(context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            height: 18,
            width: 24,
            color: Colors.grey.withOpacity(0.3),
          ),
          const SizedBox(
            width: 18,
          ),
          const Text(
            'Referensi',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
