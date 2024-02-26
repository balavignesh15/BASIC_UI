import 'package:flutter/material.dart';
import 'package:untitled/page1.dart';
import 'package:untitled/prof.dart';
import 'package:untitled/task.dart';

import 'blur.dart';
import 'homepage1.dart';
class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int _value = 0 ;

  final files= [
    page1(),
    vj(),
  ];

  void onpress(index)
  {
    setState(() {
      _value = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: files[_value],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.blue, size: 30,),
                label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile")
          ],
          currentIndex: _value,
          onTap: onpress,
        ),
      ),
    );
  }
}

