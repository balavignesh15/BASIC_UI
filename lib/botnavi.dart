import 'package:flutter/material.dart';
import 'package:untitled/vaild.dart';

import 'Spoti.dart';
import 'app.dart';
import 'exe.dart';
import 'flips.dart';
import 'insta.dart';

class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index = 0 ;

  final files= [
    flips(),
    instagram(),
    spotify(),
  ];

  void onpress(index)
  {
    setState(() {
      _index = index;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: files[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Flipkart"),
          BottomNavigationBarItem(icon: Icon(Icons.post_add),label: "Instagram"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note),label: "Spotify"),
        ],
        currentIndex: _index,
        onTap: onpress,
      ),
    );
  }
}



