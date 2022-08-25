part of 'menu_4.dart';

class Menu4IsiIsi extends StatefulWidget {
  const Menu4IsiIsi({Key? key}) : super(key: key);

  @override
  State<Menu4IsiIsi> createState() => _Menu4IsiIsiState();
}

class _Menu4IsiIsiState extends State<Menu4IsiIsi> {
  final List<String> contents = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          CustomAppBar(title: 'Materi Menu 4 Topic', onTap: () => back(context)),
          Expanded(child: CustomMateriScreen(contents: contents)),
        ],
      )),
    );
  }
}
