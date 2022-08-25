import 'package:flutter/material.dart';
import 'package:wireframe_karim/configurator.dart';

class CustomMateriScreen extends StatelessWidget {
  final List<String> contents;
  final bool? shrinkWrap;
  final bool? selected;
  const CustomMateriScreen({Key? key, required this.contents, this.selected, this.shrinkWrap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollWithoutEffect(),
      child: ListView.builder(
          shrinkWrap: shrinkWrap ?? false,
          padding: const EdgeInsets.only(bottom: 80),
          itemCount: contents.length,
          itemBuilder: ((_, index) {
            return _buildContent(context, index, selected ?? index == 1 || index == 3);
          })),
    );
  }

  _buildContent(context, int index, bool isActive) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 34),
      color: isActive ? Colors.grey.withOpacity(0.1) : Colors.white,
      child: Center(
        child: Text(
          contents[index],
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
