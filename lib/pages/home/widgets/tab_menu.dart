part of '../home_page.dart';

class HomeTabMenu extends StatelessWidget {
  final List<String> menus;
  final Function(int) onTap;
  const HomeTabMenu({
    Key? key,
    required this.menus,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(menus.length, _buildItem),
      ),
    );
  }

  Widget _buildItem(int index) {
    return InkWell(
      onTap: () => onTap(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/menu_tab${index + 1}.png',
            height: 60,
            width: 60,
          ),
          const SizedBox(height: 4),
          Text(menus[index]),
        ],
      ),
    );
  }
}
