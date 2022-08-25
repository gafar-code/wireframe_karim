part of '../menu_dua.dart';

class MenuDuaHeader extends StatelessWidget {
  const MenuDuaHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Image.asset(
            'assets/images/post.png',
            height: 160,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 18),
          const Text('Lorem ipsum'),
          const Text(
            'Judul Materi ada disini',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 18),
          const Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
