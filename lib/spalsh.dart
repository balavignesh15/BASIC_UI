import 'dart:async';

import 'package:flutter/material.dart';

import 'loginpage.dart';

class spalsh extends StatefulWidget {
  const spalsh({super.key});

  @override
  State<spalsh> createState() => _spalshState();
}

class _spalshState extends State<spalsh> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_)=> login()));

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/img.png",height: 150,),
            Text("ARTICLE",style: TextStyle(fontSize: 30,
                color:Colors.white60,
                fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.grey)
            )

          ],
        ),
      ),
    );
  }
}
