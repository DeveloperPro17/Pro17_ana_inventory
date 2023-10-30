import 'package:application/Qrcode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          // elevation: 10.0,
          onTap: (value) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => qrcode(),
            ));
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/Group 192.svg',
                width: 24,
                height: 44,

                alignment: Alignment.center,
                // Align the SVG icon to center
              ),
              label: 'Page 2',

              // Perform navigation or an action when item is pressed
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/Group 153.svg',
                width: 24,
                height: 24,
                alignment: Alignment.center, // Align the SVG icon to center
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/Group 155.svg',
                width: 124,
                height: 24,
                alignment: Alignment.center,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/Group 154.svg',
                width: 24,
                height: 24,

                alignment: Alignment.center, // Align the SVG icon to center
              ),
              label: 'Home',
            ),
          ]),
    );
  }
}
