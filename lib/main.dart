import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int activeIndex = 0;
  final Assetimage = [
    "assets/image/Walking the Dog.png",
    "assets/image/Walking the Dog.png",
    "assets/image/Walking the Dog.png",
  ];
  int SelectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar:
      AppBar(toolbarHeight: 40,
        title: Text("Moody",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Image.asset("assets/image/Group.png",height: 40,width: 40,),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 30.0),
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
                  Text("Hello, ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                  Text("Sara Rose",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                ],
              ),
              SizedBox(height: 12,),
              Text("How are you feeling today ?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DefaultTabController(
                        length: 3,
                        child: Column(
                          children: <Widget>[
                            ButtonsTabBar(
                              // Customize the appearance and behavior of the tab bar
                              backgroundColor: Colors.red,
                              borderWidth: 2,
                              borderColor: Colors.black,
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              unselectedLabelStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              // Add your tabs here
                              tabs: ,
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [],
                              ),
                            ),
                          ],
                        ),
                      )
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child:
                  Row(children: [
                    Text("Feature",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                    Spacer(),
                    Text("See More ",style: TextStyle(fontWeight:FontWeight.w600,fontSize: 14,color: Color(0xff027A48) ),),
                    Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff027A48),size: 12,),
                  ],),
                ),
          SizedBox(height: 16,),
          Column(
            children: [
              Container(child:
              CarouselSlider.builder(
                options: CarouselOptions(
          onPageChanged: (index, reason) => setState(() =>
          activeIndex = index),
          
          height: 168,),
                itemCount: Assetimage.length,
                itemBuilder: ( context, index, realIndex) {
          final Assetimages = Assetimage[index];
          return buildImage(Assetimages,index);
                }
          
              ),
              ),
              SizedBox(height: 15,),
              buildIndicator(),
            ],
          ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(children: [
                    Text("Excercise",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                    Spacer(),
                    Text("See More ",style: TextStyle(fontWeight:FontWeight.w600,fontSize: 14,color: Color(0xff027A48) ),),
                    Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff027A48),size: 12,),
                  ],),
                ),
                SizedBox(height: 16,),
                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Container(height: 56,width: 151,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xffF9F5FF)),
                        child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Image.asset("assets/image/relaxation.png"),
                            Text("Relaxation"),],)
                    ),
                      Container(height: 56,width: 151,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xffFFDF2FA)),
                          child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [Image.asset("assets/image/Frame.png"),
                              Text("Meditation"),],)
                      ),
                    ],)
          
                ],),
                SizedBox(height: 16,),
                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Container(height: 56,width: 151,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xffFFFAF5)),
                          child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [Image.asset("assets/image/beating.png"),
                              Text("Beathing"),],)
                      ),
                        Container(height: 56,width: 151,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xffF0F9FF)),
                            child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [Image.asset("assets/image/yoga.png"),
                                Text("Yoga"),],)
                        ),
                      ],)
          
                  ],),
          
          
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
          selectedItemColor: Color(0xff027A48),
          iconSize: 24,
          showUnselectedLabels: false,
backgroundColor: Colors.white,
          elevation: 30,

          items: [
          BottomNavigationBarItem( icon:ImageIcon(AssetImage("assets/image/home-05.png")),label: "."),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/image/grid-01.png")),label: "."),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/image/calendar.png")),label: "."),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/image/user-03.png")), label: "."),
        ],

        ),
      ),
    );
  }
  Widget buildImage (String Assetimages, int index) =>
      Container(color: Color(0xffECFDF3),

        margin: EdgeInsets.symmetric(horizontal:5),
      child:Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
Padding(
  padding: const EdgeInsets.only(top: 24,left: 24,bottom: 24),
  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Positive vibes"),
    Text("Boost your mood with "),
      Text("positive vibes"),
      SizedBox(height: 10,),
      Row(children: [Image.asset("assets/image/Button.png"),
        Text("10 mins")],)

  ],),
), Image.asset(Assetimages,height: 90,width: 102,),  ],),

            ],));
Widget buildIndicator () => AnimatedSmoothIndicator(
effect:ExpandingDotsEffect(
  dotHeight: 15,dotWidth: 15
) ,
    activeIndex: activeIndex, count: Assetimage.length
);
}
