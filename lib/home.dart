import 'package:flutter/material.dart';
import 'package:instagram_stories/util/story_cicles.dart';
import 'package:instagram_stories/util/storypage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _historia(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>StoryPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Intagram'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return StoryCircle(function: _historia,);
              },
            ),
          ),
          
        
      ]),
    );
  }
}