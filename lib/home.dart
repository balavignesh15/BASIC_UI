import 'package:flutter/material.dart';
import 'package:untitled/task.dart';
import 'package:untitled/vaild.dart';

import 'app.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _currentIndex = 0;

  final tabs =  [
    bala(),
    vald(),
    vicky(),

  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.cabin,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.car_crash,),label: "dfjkh"),
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: "uiteigyuie"),
        ],
        onTap: (index) {
          setState(() {
            if(index >=0 && index<tabs.length){
              _currentIndex  = index;

            }

          });
        }
      ),

    );
  }
}
