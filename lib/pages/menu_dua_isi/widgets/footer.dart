part of '../menu_dua_isi.dart';

class MenuDuaFooter extends StatelessWidget {
  const MenuDuaFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        const Divider(
          thickness: 1.5,
          height: 0,
        ),
        const SizedBox(height: 12),
        const Align(
          alignment: Alignment(0.9, 0),
          child: Text(
            'Materi Lain',
            style: TextStyle(color: primaryColor),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 24, top: 12),
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return _buildItem();
            },
          ),
        )
      ],
    );
  }

  _buildItem() {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/post.png',
            height: 120,
            width: 160,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 4),
          const Text(
            'Deskripsi',
            style: TextStyle(fontSize: 11),
          ),
          const SizedBox(height: 4),
          const Text(
            'Judul materi',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
