// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:instagram_stories/util/progressBar.dart';

class MyStoryBar extends StatelessWidget {
   MyStoryBar({super.key, required this.porVisto});

  List <double> porVisto =[];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(child: MyProgressBar(porVisto: porVisto[0])),
          Expanded(child: MyProgressBar(porVisto: porVisto[1])),
          Expanded(child: MyProgressBar(porVisto: porVisto[2])),
        ],
      ),
    );
  }
}