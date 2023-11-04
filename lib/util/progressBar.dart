// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyProgressBar extends StatelessWidget {
    double porVisto = 0;
   MyProgressBar({required this.porVisto});

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30,),
      child: LinearPercentIndicator(
        padding: EdgeInsets.only(left: 5, right: 3),
        lineHeight: 4,
        backgroundColor: Colors.grey[500],
        progressColor: Colors.grey[300],
        percent:porVisto,
        barRadius: Radius.circular(8),
      ),
    );
  }
}