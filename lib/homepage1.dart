import 'package:flutter/material.dart';

import 'hm page2.dart';

class page1 extends StatefulWidget {
  const page1 ({super.key});

  @override
  State<page1> createState() => _homeState();
}

class _homeState extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.menu),
        title: Text("Home"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap:()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const info()),
                );

              },



              child: Container(
                height: 400,
                width: 400,
                //color: Colors.cyan,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey,
                  image: DecorationImage(
                    image: AssetImage("assets/img_7.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(("Trednding Books"),
                        style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(mainAxisAlignment:  MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: ()
                  {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const info()),
                  );

                  },
                  child: Container(
                      height: 200,
                      width:  110,
                      //color: Colors.cyan,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/img_7.png"),
                            fit: BoxFit.fill,
                          )
                      ),
                      child: Text("HOme",)
                    // color: Colors.lightGreen,
                  ),
                ),
                GestureDetector(
                  onTap: ()
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const info()),
                      );
                    },
                  child: Container(
                      height: 200,
                      width:  110,
                      //color: Colors.cyan,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/img_8.png"),
                            fit: BoxFit.fill,
                          )
                      ),
                      child: Text("HOme",)
                    // color: Colors.lightGreen,
                  ),
                ),
                Container(
                    height: 200,
                    width:  110,
                    //color: Colors.cyan,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/img_7.png"),
                          fit: BoxFit.fill,
                        )
                    ),
                    child: Text("HOme",)
                  // color: Colors.lightGreen,
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(mainAxisAlignment:  MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: ()
                   {
                     Navigator.push(context,
                     MaterialPageRoute(builder:(context) =>const info()),
                   );
                   },

                  child: Container(
                      height: 200,
                      width:  110,
                      //color: Colors.cyan,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/img_8.png"),
                            fit: BoxFit.fill,
                          )
                      ),
                      child: Text("HOme",)
                    // color: Colors.lightGreen,
                  ),
                ),
                GestureDetector(
                  onTap: ()
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder:(context) =>const info()),
                      );
                    },
                    
                    
                    
                  child: Container(
                      height: 200,
                      width:  110,
                      //color: Colors.cyan,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/img_8.png"),
                            fit: BoxFit.fill,
                          )
                      ),
                      child: Text("HOme",)
                    // color: Colors.lightGreen,
                  ),
                ),
                Container(
                    height: 200,
                    width:  110,
                    //color: Colors.cyan,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/img_8.png"),
                          fit: BoxFit.fill,
                        )
                    ),
                    child: Text("HOme",)
                  // color: Colors.lightGreen,
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(mainAxisAlignment:  MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 200,
                    width:  110,
                    //color: Colors.cyan,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/img_8.png"),
                          fit: BoxFit.fill,
                        )
                    ),
                    child: Text("HOme",)
                  // color: Colors.lightGreen,
                ),
                Container(
                    height: 200,
                    width:  110,
                    //color: Colors.cyan,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/img_8.png"),
                          fit: BoxFit.fill,
                        )
                    ),
                    child: Text("HOme",)
                  // color: Colors.lightGreen,
                ),
                Container(
                    height: 200,
                    width:  110,
                    //color: Colors.cyan,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/img_8.png"),
                          fit: BoxFit.fill,
                        )
                    ),
                    child: Text("HOme",)
                  // color: Colors.lightGreen,
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
