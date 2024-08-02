import 'package:c11_exam_mon_online/sec%20ui/scroll_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ScrollableSingleChip.dart';
import 'bottom_image.dart';
import 'bottom_nav.dart';

void main() {
  runApp(SecApp());
}

class SecApp extends StatefulWidget {
  SecApp({super.key});

  @override
  State<SecApp> createState() => _SecAppState();
}

class _SecAppState extends State<SecApp> {
  int activeIndex = 0;

  final imageBottom = [
"assets/image_sec/Image Placeholder 2.png",
"assets/image_sec/Image Placeholder 2.png"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor:  Colors.white,
        appBar: AppBar(backgroundColor: Colors.transparent,
          toolbarHeight: 88,
          leading: Padding(
            padding: const EdgeInsets.only(left: 28.0, top: 46),
            child: Image.asset(
              "assets/image_sec/Logo Small.png",
              width: 40,
              height: 40,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 46.0),
            child: Row(
              children: [
                Text(
                  "Audi",
                  style:GoogleFonts.poppins(textStyle:TextStyle(
                      fontSize: 24,
                      color: Color(
                        0xff4838D1,
                      ),
                      fontWeight: FontWeight.w700),)
                ),
                Text(
                  "Books",
                  style: GoogleFonts.poppins(textStyle:TextStyle(
                      fontSize: 24,
                      color: Color(
                        0xff4838D1,
                      ),
                      fontWeight: FontWeight.w300),)
                ),
                Text(
                  ".",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.orange[400]),
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 54),
              child: Icon(
                Icons.settings,
                color: Color(0xff4838D1),
                size: 20,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 40),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 28),
                  child: Row(
                    children: [
                      Text(
                        "Categories",
                        style: GoogleFonts.poppins(textStyle:TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500),),
                      ),
                      Spacer(),
                      Text(
                        "See More ",
                          style: GoogleFonts.poppins(textStyle:TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500),color: Color(0xff4838D1),
                       ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ScrollableSingleChip(),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 28),
                  child: Row(
                    children: [
                      Text(
                        "Recommended For You",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "See More ",
                        style: GoogleFonts.poppins(textStyle:TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500),color: Color(0xff4838D1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                ScrollImage(),

                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 28),
                  child: Row(
                    children: [
                      Text(
                        "Best Seller",
                    style: GoogleFonts.poppins(textStyle:TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500),)
                      ),
                      Spacer(),
                      Text(
                        "See More ",
                        style: GoogleFonts.poppins(textStyle:TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500),color: Color(0xff4838D1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),

BottomImage(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNav(),

      ),
    );
  }

}
