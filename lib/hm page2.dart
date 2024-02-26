import 'package:flutter/material.dart';

import 'homepage1.dart';

class info extends StatefulWidget {
  const info({super.key});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        leading: GestureDetector(
          onTap: ()
            {
              Navigator.of(context).pop();
            },




            child: Icon(Icons.arrow_back)),
        title: Text("Artical"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(Icons.download),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: ()
                {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)
                    =>const page1()),
                  );
                },


                child: Container(
                  height: 150,
                    width: 150,
                  //color: Colors.lightGreen,
                  decoration: BoxDecoration(
                   // border: Border.all(),
                    //borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage("assets/img_8.png"),
                      fit: BoxFit.fill,
                    ),
                      shape: BoxShape.circle,
                  ),

                ),
              ),
            ),
          ),
          Text("Judi Barrett",
            style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("She grew up in Brooklyn NY, and later attended "
                "the Pratt Institute, where she earned a Bachelor "
                "of Fine Arts degree in advertising design in 1962."
                " After graduating from Pratt, Barrett worked as a "
                "freelance designer for advertising agencies before"
                " pursuing a career in education..........",
              style:TextStyle(fontSize: 16,fontWeight:FontWeight.w300),),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Get It",style: TextStyle(
            fontSize: 25,color: Colors.pink,fontWeight:FontWeight.w700,
          ),))
        ],
      ),
    );
  }
}
