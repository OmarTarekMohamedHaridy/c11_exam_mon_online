import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class SecLine extends StatefulWidget {
  const SecLine({super.key});

  @override
  State<SecLine> createState() => _SecLineState();
}

class _SecLineState extends State<SecLine> {
  @override
  Widget build(BuildContext context) {
    return  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Container(height: 56,width: 151,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xffFFFAF5)),
          child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Image.asset("assets/image/beating.png"),
              Text("Beathing",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 14,fontWeight: FontWeight.w500))),],)
      ),
        Container(height: 56,width: 151,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xffF0F9FF)),
            child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Image.asset("assets/image/yoga.png"),
                Text("Yoga",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 14,fontWeight: FontWeight.w500))),],)
        ),
      ],);
  }
}
