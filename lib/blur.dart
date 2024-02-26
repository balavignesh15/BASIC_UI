import 'dart:ui';

import 'package:flutter/material.dart';

class viks extends StatefulWidget {
  const viks({super.key});

  @override
  State<viks> createState() => _viksState();
}

class _viksState extends State<viks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img_5.png"),
                fit: BoxFit.fill
              ),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                 // color: Colors.cyan,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    //borderRadius: BorderRadius.circular(20),
                    color: Colors.cyan,
                    image:DecorationImage(
                      image: AssetImage("assets/img_3.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 350,
                    width: 350,
                    //color: Colors.cyan,
                    decoration: BoxDecoration(
                      border:Border.all(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Cl











                    ipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                            sigmaX: 20,
                            sigmaY: 20,
                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [Text("Welcome",
                            style: TextStyle(color:
                            Colors.black,fontSize: 25,
                              fontWeight: FontWeight.w600, ),),
                            TextFormField(
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    color: Colors.white),
                                hintText: 'Enter Name',
                                prefixIcon: Icon(Icons.person,color: Colors.white,),
                                border: OutlineInputBorder(
                                ),
                              ),

                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    color: Colors.white),
                                hintText: 'Password',
                                prefixIcon: Icon(Icons.password,color: Colors.white,),
                                border: OutlineInputBorder(
                                ),
                              ),

                            ),
                            MaterialButton(
                              onPressed: () {},
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text("Login"),
                              padding: EdgeInsets.all(30),
                              shape: LinearBorder.bottom(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  width:  350,
                  //color: Colors.cyan,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                            image:DecorationImage(
                              image: AssetImage("assets/img.png"),
                              fit: BoxFit.fill,
                        )
                        ),
                      ),
                      // SizedBox(width: 100,),
                      Container(
                        height: 100,
                        width: 100,
                        child: Text("Search the world's information, "
                            "including webpages, images, videos and more",
                          style: TextStyle(color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black
                          ),
                          image:DecorationImage(
                            image: AssetImage("assets/img_2.png",),
                            fit: BoxFit.fill,
                          )
                        ),

                      ),
                    ],),),


                    ],
                  ),
          ),
              ),
          ),
    );
  }
}
