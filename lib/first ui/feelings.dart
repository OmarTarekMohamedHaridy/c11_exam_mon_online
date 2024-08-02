import 'package:flutter/cupertino.dart';

class Feelings extends StatefulWidget {
  const Feelings({super.key});

  @override
  State<Feelings> createState() => _FeelingsState();
}

class _FeelingsState extends State<Feelings> {
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Image.asset("assets/image/Frame 10.png"),
            SizedBox(height: 8,),
            Text("Love")
          ],),
          Column(children: [
            Image.asset("assets/image/cool.png"),
            SizedBox(height: 8,),
            Text("Cool")
          ],),
          Column(children: [
            Image.asset("assets/image/Frame 8.png"),
            SizedBox(height: 8,),
            Text("Happy")
          ],),
          Column(children: [
            Image.asset("assets/image/Frame 12.png"),
            SizedBox(height: 8,),
            Text("Sad")
          ],),
        ],),
    );
  }
}
