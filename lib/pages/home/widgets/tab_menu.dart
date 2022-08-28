part of '../home_page.dart';

class HomeTabMenu extends StatelessWidget {
  final Function(int) onTap;
  const HomeTabMenu({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(tabMenu.length, _buildItem),
      ),
    );
  }

  Widget _buildItem(int index) {
    return InkWell(
      onTap: () => onTap(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: tabMenu[index].borderRadius,
            child: Image.asset(
              tabMenu[index].image,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 4),
          Text(tabMenu[index].title, style: tabMenu[index].titleStyle),
        ],
      ),
    );
  }
}
