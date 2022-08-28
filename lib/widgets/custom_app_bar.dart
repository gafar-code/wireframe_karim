import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  final Function()? onTap;
  final String title;
  const CustomAppBar({Key? key, this.onTap, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            // color: Colors.red,
            height: 84,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                InkWell(
                    onTap: onTap,
                    child: onTap != null
                        ? Padding(
                            padding: const EdgeInsets.only(right: 18),
                            child: SvgPicture.asset(
                              'assets/icons/ic_back.svg',
                              height: 18,
                              width: 20,
                              fit: BoxFit.contain,
                            ),
                          )
                        : const SizedBox()),
                Text(
                  title,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          const Divider(
            height: 0,
            color: Color(0xFF9EADBA),
            thickness: 1.5,
          ),
        ],
      ),
    );
  }
}
