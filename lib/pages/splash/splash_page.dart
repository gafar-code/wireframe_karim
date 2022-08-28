import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wireframe_karim/constant.dart';
import 'package:wireframe_karim/helper.dart';
import 'package:wireframe_karim/pages/daboard/darboard_page.dart';
import 'package:wireframe_karim/theme.dart';

part 'widgets/logo_screen.dart';
part 'widgets/splash_screen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<String> splashTitle = ['Lorem Ipsum 1', 'Lorem Ipsum 2', 'Lorem Ipsum 3', 'Lorem Ipsum 4'];
  List<String> splashDescription = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: PageView.builder(
              controller: _pageController,
              itemCount: splashTitle.length,
              itemBuilder: (context, index) {
                return Material(
                  color: Colors.white,
                  child: SplashScreen(
                    image: 'assets/images/splash${index + 1}.png',
                    title: splashTitle[index],
                    description: splashDescription[index],
                    buttonAction: index >= 3 ? 'Mulai' : 'Lanjut',
                    onTap: () {
                      if (index + 1 < splashTitle.length) {
                        _pageController.nextPage(
                          duration: const Duration(microseconds: 400),
                          curve: Curves.fastOutSlowIn,
                        );
                      } else {
                        goReplace(context, const DasboardPage());
                      }
                    },
                  ),
                );
              })),
    );
  }
}
