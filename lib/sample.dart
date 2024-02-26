import 'package:flutter/material.dart';

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
              padding: const EdgeInsets.all(60),
              child: Container(
                height: 300,
                width: 300,//color: Colors.grey,
                decoration: BoxDecoration(
                  //color: Colors.grey,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child:
                      TextFormField(decoration: (InputDecoration(
                        border: OutlineInputBorder(),icon: Icon(Icons.person),
                        hintText: 'Enter your name',
                      )),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(decoration: (InputDecoration(
                        border: OutlineInputBorder(),icon:Icon(Icons.password),
                        hintText: 'Enter your pass'
                      )),),
                    ),
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton(onPressed: (){}, child:Text("Login" )),
                    )
                  ],
                )


              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    width: 100,
                   // color:Colors.grey,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(),
                      borderRadius: BorderRadius.zero,
                      image:DecorationImage(
                        image: AssetImage("assets/img.png"),
                        fit: BoxFit.fill,

                      )


                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(55),
                  child: Container(
                    height: 100,
                    width: 100,
                    //color: Colors.grey,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border:Border.all(),
                      borderRadius: BorderRadius.zero,
                      image: DecorationImage(
                        image: AssetImage("assets/img.png"),
                        fit: BoxFit.fill,
                      )
                    ),
                  ),
                )
              ],
            )
          ],

        ),
      ),




    );
  }
}
