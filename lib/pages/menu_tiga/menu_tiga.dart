import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:wireframe_karim/configurator.dart';

import '../../data/menutiga.dart';
import '../../models/reference.dart';
import '../../widgets/custom_app_bar.dart';

class MenuTiga extends StatelessWidget {
  const MenuTiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(title: 'Menu Tiga'),
        Expanded(
            child: ScrollConfiguration(
          behavior: ScrollWithoutEffect(),
          child: ListView(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 60),
            children: [
              const Text(
                'Informasi',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 18),
              ...List.generate(menutigaReferences.length, (index) => _buildItem(context, menutigaReferences[index])),
            ],
          ),
        ))
      ],
    );
  }

  _buildItem(context, ReferenceModel item) {
    return InkWell(
      onTap: () async => await launchUrlString(item.url, mode: LaunchMode.externalApplication),
      child: SizedBox(
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
            Text(
              item.title,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
