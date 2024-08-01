import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(SecApp());
}

class SecApp extends StatefulWidget {
  SecApp({super.key});

  @override
  State<SecApp> createState() => _SecAppState();
}

class _SecAppState extends State<SecApp> {
  int SelectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: Scaffold(appBar:
    AppBar( toolbarHeight: 88,
      leading: Padding(
        padding: const EdgeInsets.only(left: 28.0,top: 46),
        child: Image.asset("assets/image_sec/Logo Small.png",width: 40,height: 40,),
      ),
title: Padding(
  padding: const EdgeInsets.only(top: 46.0),
  child: Row(children: [
    Text("Audi",style: TextStyle(fontSize: 24,color:Color(0xff4838D1,),fontWeight:FontWeight.w700),),
    Text("Books",style: TextStyle(fontSize: 24,color:Color(0xff4838D1,),fontWeight:FontWeight.w300),),
    Text(".",style: TextStyle(fontSize: 24,fontWeight:FontWeight.w600,color: Colors.orange),)
  ],),
),
actions: [Padding(
  padding: const EdgeInsets.only(right: 20,top: 54),
  child: Icon(Icons.settings,color: Color(0xff4838D1),size: 20,),
)],

    ),

      body: Padding(
        padding: const EdgeInsets.only(left: 24.0,top: 40),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Row(
              children: [
              Text("Categories",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,),),
              Spacer(),
              Text("See More ",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 14,color:  Color(0xff4838D1) ),),
            ],),
          ),

        ],),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          SelectedIndex = value ;
          setState(() {

          });
        },
        currentIndex: SelectedIndex,
        unselectedItemColor: Color(0xff667085667085),
        selectedItemColor: Color(0xff4838D1),
        iconSize: 24,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        elevation: 30,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search,size: 30,),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.my_library_books_sharp),label: "Library"),
      ],),
    ),);
  }
}
