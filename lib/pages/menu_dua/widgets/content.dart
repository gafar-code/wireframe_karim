part of '../menu_dua.dart';

class MenuDuaContent extends StatelessWidget {
  const MenuDuaContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (index) => _buildItem(context)),
    );
  }

  _buildItem(context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: InkWell(
        onTap: () => go(context, const MenuDuaIsi()),
        child: SizedBox(
          height: 110,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Image.asset(
                'assets/images/post.png',
                height: 110,
                width: MediaQuery.of(context).size.width * 0.4,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Lorem ipsum'),
                  SizedBox(height: 12),
                  Text(
                    'Judul materi ada disini\n "contoh"',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
