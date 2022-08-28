part of 'menu_4.dart';

class Menu4IsiIsi extends StatefulWidget {
  const Menu4IsiIsi({Key? key}) : super(key: key);

  @override
  State<Menu4IsiIsi> createState() => _Menu4IsiIsiState();
}

class _Menu4IsiIsiState extends State<Menu4IsiIsi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          CustomAppBar(title: 'Materi Menu 4 Topic', onTap: () => back(context)),
          Expanded(child: CustomMateriScreen(contents: menuSatuContentMateri1)),
        ],
      )),
    );
  }
}
