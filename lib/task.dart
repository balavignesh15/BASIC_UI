import 'package:flutter/material.dart';

class vicky extends StatefulWidget {
  const vicky({super.key});

  @override
  State<vicky> createState() => _vickyState();
}

class _vickyState extends State<vicky> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Column(
          children: [
            Container(
              height: 120,
              width: 120,
              //color: Colors.grey,
              decoration: BoxDecoration(
                border:Border.all(),
                //borderRadius:BorderRadius.circular(20),
                image:DecorationImage(
                  image: AssetImage("assets/img.png"),
                  fit:BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                      height: 300,
                      width: 300,
                      //color: Colors.grey,
                      decoration: BoxDecoration(
              border: Border.all(),
              borderRadius:BorderRadius.circular(10),
                      ),
                      child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 120,
                          width: 120,
                          //color: Colors.greenAccent,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(25),
                            image:DecorationImage(
                              image: AssetImage("assets/img.png"),
                              fit: BoxFit.fill
                            )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: 120,
                              //color: Colors.greenAccent,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius:BorderRadius.circular(25),
                                  image:DecorationImage(
                                      image: AssetImage("assets/img.png"),
                                      fit: BoxFit.fill
                                  )
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 120,
                              //color: Colors.greenAccent,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius:BorderRadius.circular(25),
                                  image:DecorationImage(
                                      image: AssetImage("assets/img.png"),
                                      fit: BoxFit.fill
                                  )
                              ),
                            )
                          ],
                        ),
                      )
                        ],
                        ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 120,
                        width: 120,
                        //color: Colors.greenAccent,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(25),
                            image:DecorationImage(
                                image: AssetImage("assets/img.png"),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 120,
                        width: 120,
                        //color: Colors.greenAccent,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:BorderRadius.circular(25),
                            image:DecorationImage(
                                image: AssetImage("assets/img.png"),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ),

                  ],
                ),



                    ],

                    )
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextFormField(
                decoration:(InputDecoration(
                    border: OutlineInputBorder(),
                  hintText: "ENTER"

                )),

                ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(onPressed: (){}, child:Text("Login",)),
            ),



            ],
          ),

      ),
          );

  }
}
