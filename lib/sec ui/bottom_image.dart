import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
class BottomImage extends StatefulWidget {
  const BottomImage({super.key});

  @override
  State<BottomImage> createState() => _BottomImageState();
}

class _BottomImageState extends State<BottomImage> {
  @override
  int BottomIndex = 0 ;
  final image = [
    "assets/image_sec/Image Placeholder 400x600.png",
    "assets/image_sec/Image Placeholder 1.png"
  ];
  Widget build(BuildContext context) {
return Column(
  children: [
    CarouselSlider.builder(
        options: CarouselOptions(
            onPageChanged: (index, reason) =>
                setState(() => BottomIndex = index),
            height: 144),
        itemCount: image.length,
        itemBuilder: (context, index, realIndex) {
          return  Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffF5F5FA),),
              height: 144,
              margin: EdgeInsets.symmetric(horizontal: 10),

              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset("assets/image_sec/Image Placeholder 2.png"),
                  ),
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.only(top:16.0),
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Light Mage",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                        Text("Laurie Forest",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                      ],),
                  )
                ],)
          );
        }),
  ],
);
}}
