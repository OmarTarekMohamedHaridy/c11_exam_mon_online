import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class ScrollImage extends StatefulWidget {
  const ScrollImage({super.key});

  @override
  State<ScrollImage> createState() => _ScrollImageState();
}

class _ScrollImageState extends State<ScrollImage> {
  final image = [
    "assets/image_sec/Image Placeholder 400x600.png",
    "assets/image_sec/Image Placeholder 1.png"
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
            children:[ CarouselSlider.builder(
                options: CarouselOptions(
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                ),
                itemCount: image.length,
                itemBuilder: (context, index, realIndex) {
                  final Assetsimages = image[index];
                  return createImage(Assetsimages, index);
                }),
            ], ),
        SizedBox(height: 15,),
        buildIndicator(),
      ],
    );
  }
  Widget createImage(String Assetimages, int index) =>
      Row(
        children: [Image.asset(image[index])
        ],);

  Widget buildIndicator() => AnimatedSmoothIndicator(
      effect: const ExpandingDotsEffect(dotHeight: 10, dotWidth: 10),
      activeIndex: activeIndex,
      count: image.length);
}
