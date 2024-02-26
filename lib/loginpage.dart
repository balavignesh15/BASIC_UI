import 'package:flutter/material.dart';



import 'blur.dart';
import 'botnavi.dart';
import 'hme.dart';
final _vali=GlobalKey<FormState>();

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return (SafeArea(
      child: Scaffold(
        body: Container(

          height:MediaQuery.of(context).size.height*1,
          width: MediaQuery.of(context).size.width*1,
          decoration:BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.green,
                    Colors.greenAccent,

                  ]
              )
          ) ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment:CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Welcome!",style:TextStyle(fontSize: 50,color: Colors.white),),
              ),
              Container(height: 400,
                width: 400,
                //color: Colors.black26,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  //border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _vali,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              // labelText: 'Enter Name',
                              // hintStyle: TextStyle(color: Colors.black),
                              labelText: 'Enter Name',
                              labelStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(Icons.person,
                                color: Colors.black,)
                          ),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^[a-z A-z+$]').hasMatch(value!)) {
                                return "Enter correct name";
                              }else{
                                return null;
                              }
                            }

                        ),
                        TextFormField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              // labelText: 'Enter Name',
                              //hintStyle: TextStyle(color: Colors.black),
                              //hintText: 'Enter password',
                              labelText: 'Enter password',
                              labelStyle: TextStyle(color: Colors.black),
                              prefixIcon: Icon(Icons.password,
                                color: Colors.black,)
                          ),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',).hasMatch(value)) {
                                return "The password should with one uppercase"
                                    "lower case with"
                                    "8 chracter";
                              }else{
                                return null;
                              }
                            }
                        ),
                        ElevatedButton(
                            onPressed: (){
                              // Validate returns true if the form is valid, or false otherwise.
                              if (_vali.currentState!.validate()){
                                // If the form is valid, display a snackbar. In the real world,
                                // you'd often call a server or save the information in a database.
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Processing Data')),
                                );
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Botnavi()));
                                
                              }


                            }, child: Text("Login",))
                      ],

                    ),
                  ),
                ),
              )
            ],


          ),
        ),
      ),
    )

    );
  }
}


// class log extends StatelessWidget {
//   const log({super.key})
//
//
//   final _vali=GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
