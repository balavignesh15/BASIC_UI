import 'package:flutter/material.dart';

class pg extends StatefulWidget {
  const pg({super.key});

  @override
  State<pg> createState() => _pgState();
}

class _pgState extends State<pg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueGrey,
      body: Padding(

        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                // color: Colors.cyan,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  border: Border.all(),
                  // borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: AssetImage("assets/img.png"),
                      fit: BoxFit.fill
                  ),
                  shape: BoxShape.circle,

                ),
                child: Center(child: Text("ok",style: TextStyle(color: Colors.cyan),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    // color:Colors.grey,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        image:DecorationImage(
                          image: AssetImage("assets/img.png"),
                          fit: BoxFit.fill,

                        )


                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    //color: Colors.grey,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border:Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/img.png"),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),

                ],
              ),
            ),
            Container(
              height: 350,
              width: 500,
              color: Colors.black12,
              child:
              Text("Flutter is Google’s UI toolkit for crafting beautiful, "
                  "natively compiled iOS and Android apps from a single code base."
                  " To build any application we start with widgets – "
                  "The building block of flutter applications. "
                  "Widgets describe what their view should look like given their"
                  " current configuration and state",
                  style: TextStyle(color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700)
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                color: Colors.blue,
                textColor: Colors.white,
                child: Text("Get"),
                padding: EdgeInsets.all(30),
                shape: LinearBorder.bottom(),
              ),
            )
          ],

        ),
      ),


    );
  }
}
