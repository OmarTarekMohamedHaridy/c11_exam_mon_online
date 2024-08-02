import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstLine extends StatefulWidget {
  const FirstLine({super.key});

  @override
  State<FirstLine> createState() => _FirstLineState();
}

class _FirstLineState extends State<FirstLine> {
  @override
  Widget build(BuildContext context) {
    return    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Container(height: 56,width: 151,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xffF9F5FF)),
          child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Image.asset("assets/image/relaxation.png"),
              Text("Relaxation",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 14,fontWeight: FontWeight.w500)) ),],)
      ),
        Container(height: 56,width: 151,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xffFFDF2FA)),
            child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Image.asset("assets/image/Frame.png"),
                Text("Meditation",style:GoogleFonts.inter(textStyle:TextStyle(fontSize: 14,fontWeight: FontWeight.w500))),],)
        ),
      ],);
  }
}
