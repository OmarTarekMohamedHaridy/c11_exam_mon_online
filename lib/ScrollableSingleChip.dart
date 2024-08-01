import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollableSingleChip extends StatefulWidget {
  const ScrollableSingleChip({super.key});

  @override
  State<ScrollableSingleChip> createState() => _ScrollableSingleChipState();
}

class _ScrollableSingleChipState extends State<ScrollableSingleChip> {
  int tag = 1;
  List<String> Categoris = [
    'Art', 'Business', 'Comedy',
    'Drama', 'Action', 'Horror',
    'Science Fiction', 'Romance', 'Crime film', 'Family',
    'Anime',
  ];

  @override
  Widget build(BuildContext context) {
    return ChipsChoice.single(
      value: tag,
      onChanged: (val) => setState(() => tag = val),
      choiceItems: C2Choice.listFrom(
        source: Categoris,

        value: (i, v) => i,
        label: (i, v) => v,
      ),
      );
  }
}
