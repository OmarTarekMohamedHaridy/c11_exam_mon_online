import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'bottom_image.dart';
class SecScroll extends StatefulWidget {
  const SecScroll({super.key});

  @override
  State<SecScroll> createState() => _SecScrollState();
}

class _SecScrollState extends State<SecScroll> {
  final image = [
    "assets/image_sec/Image Placeholder 400x600.png",
    "assets/image_sec/Image Placeholder 1.png"

  ];
  int BottomIndex = 0 ;
  @override
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
              return BottomImage();
            }),
      ],
    );
  }
}
