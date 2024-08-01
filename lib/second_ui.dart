import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'ScrollableSingleChip.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main (){
  runApp(SecApp());
}

class SecApp extends StatefulWidget {
  SecApp({super.key});

  @override
  State<SecApp> createState() => _SecAppState();
}

class _SecAppState extends State<SecApp> {
  int activeIndex = 0;
  final image = [    "assets/image_sec/Image Placeholder 400x600.png",
"assets/image_sec/Image Placeholder 1.png",


  ];
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

      body: SingleChildScrollView(
        child: Padding(
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
        SizedBox(height: 16,),
            ScrollableSingleChip(),
            SizedBox(height: 32,),
            Padding(
              padding: const EdgeInsets.only(right: 28),
              child: Row(
                children: [
                  Text("Recommended For You",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,),),
                  Spacer(),
                  Text("See More ",style: TextStyle(fontWeight:FontWeight.w500,fontSize: 14,color:  Color(0xff4838D1) ),),
                ],),
            ),
            Container(child:
            CarouselSlider.builder(
                options: CarouselOptions(
                  onPageChanged: (index, reason) => setState(() =>
                  activeIndex = index),

                  height: 300,),
                itemCount: image.length,
                itemBuilder: ( context, index, realIndex) {
                  final Assetimages =image[index];
                  return createImage(Assetimages,index);
                }

            ),
            ),
            SizedBox(height: 15,),
            buildIndicator()
          ],),
        ),
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
  Widget createImage (String Assetimages,int index) =>
      Container(   margin: EdgeInsets.symmetric(horizontal:20),
          child: Image.asset(image[index]));


  Widget buildIndicator () => AnimatedSmoothIndicator(
      effect:ExpandingDotsEffect(
          dotHeight: 10,dotWidth: 10
      ) ,
      activeIndex: activeIndex, count: image.length
  );
}
