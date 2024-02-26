import 'package:flutter/material.dart';

final formkey=GlobalKey<FormState>();



class vald extends StatelessWidget {
  const vald({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Center(child: Text("Valid Form",)),
        backgroundColor: Colors.pink,
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formkey,
          child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFormField(

                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(20),
                    ),
                    // labelText: 'Enter Name',
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: 'Enter Name',
                    prefixIcon: Icon(Icons.person,
                      color: Colors.pink,)
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
                      // borderRadius: BorderRadius.circular(20),
                    ),
                    // labelText: 'Enter Name',
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email,
                      color: Colors.pink,)
                ),
                  validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value!)) {
                  return "Enter correct Email";
                }else{
                  return null;
                }
              }







              ),
              TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(20),
                    ),
                    // labelText: 'Enter Name',
                    hintStyle: TextStyle(color: Colors.black),
                    labelText: 'Mobile Number',
                    prefixIcon: Icon(Icons.phone,
                      color: Colors.pink,)
                ),validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r'^[+]*+[(]{0,1}[0-9]{0,4}+[-\s\./0-9]$').hasMatch(value!)) {
                  return "Enter correct number";
                }else{
                  return null;
                }
              }






              ),
              TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(20),
                    ),
                    // labelText: 'Enter Name',
                    //hintStyle: TextStyle(color: Colors.black),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.password,
                      color: Colors.pink,)
                ),validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',).hasMatch(value)) {
                  return "The password should with 8 chracter";
                }else{
                  return null;
                }
              }





              ),
              MaterialButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (formkey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },

                color: Colors.blue,
                textColor: Colors.white,
                child: Text("Login"),
                padding: EdgeInsets.all(30),
                shape: CircleBorder(),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
