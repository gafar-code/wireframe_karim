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
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final prefs = await SharedPreferences.getInstance();
      final bool repeat = prefs.getBool('repeat') ?? false;
      log('$repeat');
      Future.delayed(const Duration(seconds: 3)).then((_) {
        goReplace(context, repeat ? const DasboardPage() : const SplashPage());
      });
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
