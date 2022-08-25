part of 'menu_3.dart';

class Menu3Isi extends StatelessWidget {
  const Menu3Isi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/icons/ic_close.svg'),
                SvgPicture.asset('assets/icons/ic_share.svg'),
              ],
            ),
            const SizedBox(height: 90),
            Image.asset('assets/images/post.png'),
          ],
        ),
      )),
    );
  }
}
