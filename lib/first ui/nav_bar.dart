import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int SelectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        SelectedIndex = value ;
        setState(() {

        });
      },
      currentIndex: SelectedIndex,
      unselectedItemColor: Color(0xff667085667085),
      selectedItemColor: Color(0xff027A48),
      iconSize: 24,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      elevation: 30,

      items: [
        BottomNavigationBarItem( icon:ImageIcon(AssetImage("assets/image/home-05.png")),label: "Home"),
        BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/image/grid-01.png")),label: "Widget"),
        BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/image/calendar.png")),label: "Calender"),
        BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/image/user-03.png")), label: "Me"),
      ],

    );
  }
}
