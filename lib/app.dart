import 'dart:ui';

import 'package:flutter/material.dart';

import 'blur.dart';

final _formkey=GlobalKey<FormState>();

class bala extends StatelessWidget {
  const bala({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img.png"),fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.green,
                  decoration: BoxDecoration(
                    border:Border.all(),
                   // borderRadius:BorderRadius.circular(20),
                    image:DecorationImage(
                      image: AssetImage("assets/img_1.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
          
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 120,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.lightGreen,
                    ),
          
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: 80,
                          //color: Colors.green,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.vertical(
                              top: Radius.circular(15),
          
                            ),
                              border: Border.all(),
                              // borderRadius:BorderRadius.only(topLeft:15,topRight: 15.0)
                              image:DecorationImage(
                                image: AssetImage("assets/img_1.png"),
                                fit:BoxFit.fill,
                              )
          
                          ),
                        ),
                        Text("Hello"),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.lightGreen,
                    ),
          
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap:()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const viks()),
                      );
          
                    },
                          child: Container(
                            height: 90,
                            width: 80,
                            //color: Colors.green,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(top:Radius.circular(15),),
                                border: Border.all(),
          
          
                                image:DecorationImage(
                                  image: AssetImage("assets/img_1.png"),
                                  fit:BoxFit.fill,
                                )
          
                            ),
                          ),
                        ),
                        Text("Hello"),
                      ],
                    ),
                  ),
                ],
          
              ),
              Container(
                // color: Colors.grey,
                height: 300,
                width:  300,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                ),
          
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5,
                      sigmaY: 5,
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Welcome Gt Software College",
                            style: TextStyle(color: Colors.black,
                                fontSize: 15,fontWeight: FontWeight.w900),
                          ),
                        ),
                        Text("data"),
          
          
          
          
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child:
          
                          Form(
                            key: _formkey,
                            child: Center(
                              child: TextFormField(
                                  style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    // borderRadius: BorderRadius.circular(20),
                                ),
                                // labelText: 'Enter Name',
                                    hintStyle: TextStyle(color: Colors.white),
                                hintText: 'Enter Name',
                                prefixIcon: Icon(Icons.person,
                                  color: Colors.pink,)
                              ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                              ),
          
          
          
          
          
          
                                //validator: (name) => name!.length <3
                                   // ? 'Plese enter your name'
                                   // :null,
                                //autovalidateMode: AutovalidateMode.onUserInteraction,
          
                              ),
                              ),
                            ),
            //                     MaterialButton(
            //                       onPressed: () {
            //                         // Validate returns true if the form is valid, or false otherwise.
            //               if (_formkey.currentState!.validate()) {
            //     // If the form is valid, display a snackbar. In the real world,
            //     // you'd often call a server or save the information in a database.
            //     ScaffoldMessenger.of(context).showSnackBar(
            //       const SnackBar(content: Text('Processing Data')),
            //     );
            //   }
            // },
            //
            //                       color: Colors.blue,
            //                       textColor: Colors.white,
            //                       child: Text("Login"),
            //                       padding: EdgeInsets.all(30),
            //                       shape: CircleBorder(),
            //                     ),
          
          
          
                        ElevatedButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const viks()),
                          );
          
          
                        },
                            child:
                            Text("login"),
          
                        ),
          
          
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                // color: Colors.grey,
                height: 300,
                width:  300,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                ),
          
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5,
                      sigmaY: 5,
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Welcome Gt Software College",
                            style: TextStyle(color: Colors.black,
                                fontSize: 15,fontWeight: FontWeight.w900),
                          ),
                        ),
                        Text("data"),
          
          
          
          
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child:
          
                          Form(
                            key: _formkey,
                            child: Center(
                              child: TextFormField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      // borderRadius: BorderRadius.circular(20),
                                    ),
                                    // labelText: 'Enter Name',
                                    hintStyle: TextStyle(color: Colors.white),
                                    hintText: 'Enter Name',
                                    prefixIcon: Icon(Icons.person,
                                      color: Colors.pink,)
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                              ),
          
          
          
          
          
          
                              //validator: (name) => name!.length <3
                              // ? 'Plese enter your name'
                              // :null,
                              //autovalidateMode: AutovalidateMode.onUserInteraction,
          
                            ),
                          ),
                        ),
                        //                     MaterialButton(
                        //                       onPressed: () {
                        //                         // Validate returns true if the form is valid, or false otherwise.
                        //               if (_formkey.currentState!.validate()) {
                        //     // If the form is valid, display a snackbar. In the real world,
                        //     // you'd often call a server or save the information in a database.
                        //     ScaffoldMessenger.of(context).showSnackBar(
                        //       const SnackBar(content: Text('Processing Data')),
                        //     );
                        //   }
                        // },
                        //
                        //                       color: Colors.blue,
                        //                       textColor: Colors.white,
                        //                       child: Text("Login"),
                        //                       padding: EdgeInsets.all(30),
                        //                       shape: CircleBorder(),
                        //                     ),
          
          
          
                        ElevatedButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const viks()),
                          );
          
          
                        },
                          child:
                          Text("login"),
          
                        ),
          
          
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                // color: Colors.grey,
                height: 300,
                width:  300,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                ),
          
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5,
                      sigmaY: 5,
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Welcome Gt Software College",
                            style: TextStyle(color: Colors.black,
                                fontSize: 15,fontWeight: FontWeight.w900),
                          ),
                        ),
                        Text("data"),
          
          
          
          
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child:
          
                          Form(
                            key: _formkey,
                            child: Center(
                              child: TextFormField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      // borderRadius: BorderRadius.circular(20),
                                    ),
                                    // labelText: 'Enter Name',
                                    hintStyle: TextStyle(color: Colors.white),
                                    hintText: 'Enter Name',
                                    prefixIcon: Icon(Icons.person,
                                      color: Colors.pink,)
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                              ),
          
          
          
          
          
          
                              //validator: (name) => name!.length <3
                              // ? 'Plese enter your name'
                              // :null,
                              //autovalidateMode: AutovalidateMode.onUserInteraction,
          
                            ),
                          ),
                        ),
                        //                     MaterialButton(
                        //                       onPressed: () {
                        //                         // Validate returns true if the form is valid, or false otherwise.
                        //               if (_formkey.currentState!.validate()) {
                        //     // If the form is valid, display a snackbar. In the real world,
                        //     // you'd often call a server or save the information in a database.
                        //     ScaffoldMessenger.of(context).showSnackBar(
                        //       const SnackBar(content: Text('Processing Data')),
                        //     );
                        //   }
                        // },
                        //
                        //                       color: Colors.blue,
                        //                       textColor: Colors.white,
                        //                       child: Text("Login"),
                        //                       padding: EdgeInsets.all(30),
                        //                       shape: CircleBorder(),
                        //                     ),
          
          
          
                        ElevatedButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const viks()),
                          );
          
          
                        },
                          child:
                          Text("login"),
          
                        ),
          
          
                      ],
                    ),
                  ),
                ),
              ),
          
            ],
          ),
        ),
      )
    );
  }
}
