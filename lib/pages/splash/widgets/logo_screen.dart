part of '../splash_page.dart';

class SplashPageLogo extends StatefulWidget {
  const SplashPageLogo({Key? key}) : super(key: key);

  @override
  State<SplashPageLogo> createState() => _SplashPageLogoState();
}

class _SplashPageLogoState extends State<SplashPageLogo> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3)).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const SplashPage()))));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                logoApp,
                height: 34,
              ),
              const SizedBox(height: 18),
              Container(
                width: 120,
                height: 28,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
