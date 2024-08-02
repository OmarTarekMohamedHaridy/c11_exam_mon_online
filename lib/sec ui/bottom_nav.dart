import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        SelectedIndex = value;
        setState(() {});
      },
      currentIndex: SelectedIndex,
      unselectedItemColor: Color(0xff667085667085),
      selectedItemColor: Color(0xff4838D1),
      iconSize: 24,
      showUnselectedLabels: true,
      backgroundColor: Colors.white,
      elevation: 30,

      selectedLabelStyle: GoogleFonts.poppins(textStyle:TextStyle(
    fontSize: 14,
        fontWeight: FontWeight.w500),color: Color(0xff4838D1),
    ),
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_sharp), label: "Library"),
      ],
    );
  }
}
