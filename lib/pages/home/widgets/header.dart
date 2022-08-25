part of '../home_page.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.3;
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Material(
              color: primaryColor,
              child: SizedBox(
                height: height * 0.6,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(0, -0.9),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 18),
              child: Text(
                'lorem ipsum',
                style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.3),
            child: Container(
              height: height * 0.6,
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), boxShadow: [BoxShadow(blurRadius: 5, offset: const Offset(0, 4), color: Colors.black.withOpacity(0.2))]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'LOREM IPSUM',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '23:00',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Spacer(),
                      Text('Senin, 23 juli 2022'),
                      SizedBox(height: 4),
                      Text('09 syawal 1443 Hijriah'),
                    ],
                  ),
                  Image.asset(
                    'assets/images/home_card.png',
                    height: 140,
                    width: 140,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
