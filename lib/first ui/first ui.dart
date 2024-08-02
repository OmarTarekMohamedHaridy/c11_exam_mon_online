import 'dart:ui';
import 'package:c11_exam_mon_online/first%20ui/sec_line.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:google_fonts/google_fonts.dart';
import 'first_line.dart';
import 'positive_vibes.dart';
import 'feelings.dart';
import 'nav_bar.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar:
      AppBar(toolbarHeight: 70,
        title: Padding(
          padding: const EdgeInsets.only(top: 34.0),
          child: Text("Moody",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 24,fontWeight: FontWeight.w400)) ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0,top: 34.0),
          child: Image.asset("assets/image/Group.png",height: 40,width: 40,),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 30.0,top: 34.0),
          child: badges.Badge(
            badgeContent: Text('1'),
            child: Icon(Icons.notifications_none,size: 25,),
          ),
        )],
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
                children: [
                  Text("Hello, ",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w400)) ),
                  Text("Sara Rose",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.w600)) ),
                ],
              ),
              SizedBox(height: 12,),
              Text("How are you feeling today ?",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 16,fontWeight: FontWeight.w400)) ),
                Feelings(),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child:
                  Row(children: [
                    Text("Feature",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 18,fontWeight: FontWeight.w600)) ),
                    Spacer(),
                    Text("See More ",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff027A48)))  ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff027A48),size: 12,),
                  ],),
                ),
          SizedBox(height: 16,),
                PositiveVibes(),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(children: [
                    Text("Excercise",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 18,fontWeight: FontWeight.w600)) ),
                    Spacer(),
                    Text("See More ",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff027A48)))  ),
                    Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff027A48),size: 12,),
                  ],),
                ),
                SizedBox(height: 16,),
                FirstLine(),
                SizedBox(height: 16,),
                SecLine(),
          
            ],),
          ),
        ),
        bottomNavigationBar: NavBar()
      ),
    );
  }

}
