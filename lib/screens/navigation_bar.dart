import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/assets/app_theme.dart';

class BottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavigation(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: selectedIndex == 0
              ? SvgPicture.asset('assets/svg/home_selected_icon.svg')
              : SvgPicture.asset('assets/svg/home_unselected_icon.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 1
              ? SvgPicture.asset('assets/svg/bookmark_selected_icon.svg')
              : SvgPicture.asset('assets/svg/bookmark_unselected_icon.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 2
              ? SvgPicture.asset('assets/svg/notification_selected_icon.svg')
              : SvgPicture.asset('assets/svg/notification_unselected_icon.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 3
              ? SvgPicture.asset('assets/svg/profile_selected_icon.svg')
              : SvgPicture.asset('assets/svg/profile_unselected_icon.svg'),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
    );
  }
}
