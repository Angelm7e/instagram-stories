// ignore_for_file: unused_import

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_stories/stories/story1.dart';
import 'package:instagram_stories/stories/story2.dart';
import 'package:instagram_stories/stories/story3.dart';
import 'package:instagram_stories/util/stoty_bar.dart';

class StoryPage extends StatefulWidget {


  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  
  int storyIndex =0; 
  final List<Widget> myStories = [
    MyStory1(),
    MyStory2(),
    MyStory3(),
  ];
  
  List<double> porVisto = [];

  @override
  void initState() {
    super.initState();
    
    for(int i = 0; i< myStories.length; i++){
      porVisto.add(0);
    }

    _start();
  }

  void _start (){
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      setState(() {
        if(porVisto[storyIndex] + 0.01 <1){
          porVisto[storyIndex] +=0.01;
        }else{
          porVisto[storyIndex] = 1;
          timer.cancel();
          print(storyIndex);
          // Navigator.pop(context);
          if(storyIndex <myStories.length -1){
          storyIndex++;
          _start();
        }
        else{
          Navigator.pop(context);
        }
        }
      });
     });
  }

  void _onTapDown(TapDownDetails details){
    final double screemWidth = MediaQuery.of(context).size.width;
    final double dx = details.globalPosition.dx;

    if (dx < screemWidth / 2){
      setState(() {
        if(storyIndex > 0){
          porVisto[storyIndex - 1] = 0;
          porVisto[storyIndex] = 0;

          storyIndex--;
        }
      });
    }
    else{
      setState(() {
        if(storyIndex <myStories.length -1){
          porVisto[storyIndex] = 1;

          storyIndex++;
        }else{
          porVisto[storyIndex] = 1;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details)=> _onTapDown(details),
      child: Scaffold(
        body: Stack(children:[
           myStories[storyIndex],
           
           MyStoryBar(porVisto: porVisto,)
           ]),
      ),
    );
  }
}