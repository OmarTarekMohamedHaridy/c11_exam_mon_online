import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PositiveVibes extends StatefulWidget {
  const PositiveVibes({super.key});

  @override
  State<PositiveVibes> createState() => _PositiveVibesState();
}

class _PositiveVibesState extends State<PositiveVibes> {
  int activeIndex = 0;
  final Assetimage = [
    "assets/image/Walking the Dog.png",
    "assets/image/Walking the Dog.png",
    "assets/image/Walking the Dog.png",
  ];
  @override
  Widget build(BuildContext context) {
    return  Column(
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
    );
  }
  Widget buildImage (String Assetimages, int index) =>
      Container(color: Color(0xffECFDF3),

          margin: EdgeInsets.symmetric(horizontal:5),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24,left: 24,bottom: 24),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Positive vibes",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 16,fontWeight: FontWeight.w500))),
                        SizedBox(height: 8,),
                        Text("Boost your mood with ",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 12,fontWeight: FontWeight.w500))),
                        Text("positive vibes",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 12,fontWeight: FontWeight.w500))),
                        SizedBox(height: 10,),
                        Row(children: [Image.asset("assets/image/Button.png"),
                          Text("10 mins",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 12,fontWeight: FontWeight.w500)))],)

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
