import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/firbase2/auth_contl.dart';
import 'package:untitled/spalsh.dart';
// import 'package:untitled/app.dart';
// import 'package:untitled/blur.dart';
// import 'package:untitled/exe.dart';
// import 'package:untitled/page1.dart';
// import 'package:untitled/product.dart';
// import 'package:untitled/prof.dart';
// import 'package:untitled/sample.dart';
// import 'package:untitled/firbase2/signup.dart';
// import 'package:untitled/spalsh.dart';
// import 'package:untitled/task.dart';
// import 'package:untitled/vaild.dart';
//
// import 'Fkart.dart';
// import 'Spoti.dart';
// import 'botnavi.dart';
// import 'firebaseautjh/welcome.dart';
// import 'flipkart.dart';
// import 'flips.dart';
// import 'hm page2.dart';
// import 'hme.dart';
// import 'home.dart';
// import 'homepage1.dart';
// import 'insta.dart';
// import 'loginpage.dart';
import 'firbase2/logs.dart';
import 'firebaseautjh/welcome.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController())
    // options: FirebaseOptions(apiKey: "AIzaSyAK5HOiR2iT4MPzDWHUAYOzppHND0TLRoo", appId: "com.example.untitled",
    //     messagingSenderId: "874849879847", projectId: "emailauth-8ef7d").th
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:spalsh()
    );
  }
}


