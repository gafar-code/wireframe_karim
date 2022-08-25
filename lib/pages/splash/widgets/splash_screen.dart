part of '../splash_page.dart';

class SplashScreen extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String buttonAction;
  final Function() onTap;
  const SplashScreen({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.buttonAction,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.12, bottom: 60),
          child: Image.asset(image, height: 200, width: 200),
        ),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        const SizedBox(height: 28),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 17),
          ),
        ),
        const SizedBox(height: 120),
        Material(
          color: primaryColor,
          borderRadius: BorderRadius.circular(4),
          child: InkWell(
            onTap: onTap,
            child: SizedBox(
              height: 44,
              width: 180,
              child: Center(
                child: Text(
                  buttonAction,
                  style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
