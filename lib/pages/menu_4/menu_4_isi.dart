part of 'menu_4.dart';

class Menu4Isi extends StatefulWidget {
  const Menu4Isi({Key? key}) : super(key: key);

  @override
  State<Menu4Isi> createState() => _Menu4IsiState();
}

class _Menu4IsiState extends State<Menu4Isi> {
  final List<String> items = [
    'Pembahasan satu',
    'Pembahasan dua',
    'Pembahasan tiga',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: 'Materi Menu 4', onTap: () => back(context)),
            Expanded(
                child: ListView.builder(
              padding: const EdgeInsets.only(top: 24),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return _buildItem(context, index, items[index]);
              },
            ))
          ],
        ),
      ),
    );
  }

  _buildItem(context, index, content) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(34, 12, 34, 24),
      child: Material(
        color: Colors.grey.withOpacity(0.06),
        child: InkWell(
          onTap: () => go(context, const Menu4IsiIsi()),
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
                  content,
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
