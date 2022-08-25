part of 'menu_2.dart';

class Menu2Isi extends StatefulWidget {
  const Menu2Isi({Key? key}) : super(key: key);

  @override
  State<Menu2Isi> createState() => _Menu2IsiState();
}

class _Menu2IsiState extends State<Menu2Isi> {
  final List<String> contents = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          CustomAppBar(
            title: 'Topic Satu',
            onTap: () => back(context),
          ),
          Expanded(
              child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            children: [
              const Text('Judul Topic Satu', style: TextStyle(fontSize: 17)),
              const SizedBox(height: 18),
              Image.asset(
                'assets/images/post.png',
                height: 220,
                fit: BoxFit.cover,
              ),
              ...List.generate(contents.length, (index) => _buildContent(contents[index]))
            ],
          ))
        ],
      )),
    );
  }

  _buildContent(String content) {
    return Column(children: [
      const SizedBox(height: 24),
      Text(
        content,
        style: const TextStyle(fontSize: 16),
      ),
    ]);
  }
}
