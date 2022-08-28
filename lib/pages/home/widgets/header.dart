part of '../home_page.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  late String _localTime;
  late String _localDate;
  late String _localHijriyah;

  @override
  void initState() {
    _localTime = getTime;
    _localDate = getTime;
    _localHijriyah = getHijriyah;

    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer.periodic(const Duration(seconds: 1), (_) {
        setState(() {
          _localTime = getTime;
          _localDate = getDate;
          _localHijriyah = getHijriyah;
        });
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

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
          Align(
            alignment: Alignment.bottomCenter,
            child: Material(
              color: Colors.white,
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
                    children: [
                      const FittedBox(
                        child: Text(
                          'LOREM IPSUM',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        _localTime,
                        style: const TextStyle(
                          color: primaryColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const Spacer(),
                      FittedBox(child: Text(_localDate)),
                      const SizedBox(height: 4),
                      FittedBox(child: Text('$_localHijriyah Hijriah')),
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
