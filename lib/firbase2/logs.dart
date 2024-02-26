import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/firbase2/signup.dart';

import '../firebaseautjh/welcome.dart';
import '../flips.dart';
import '../homepage1.dart';
import 'homescreen.dart';

class logii extends StatefulWidget {
  const logii({super.key});

  @override
  State<logii> createState() => _logiiState();
}

class _logiiState extends State<logii> {
  bool showSpinner = false;
  String email = '';
  String password = '';
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: Icon(Icons.menu),

        title: Center(child: Text("Login")),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Icons.password),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          ElevatedButton(
              child: const Text('Log in'),
              onPressed: ()
              async {
                setState(() {
                  showSpinner = true;
                });
                //Login to existing account
                try {
                  await _auth.signInWithEmailAndPassword(
                      email: email, password: password).then((value)
                  {
                    // setState(()
                    // {
                    //   showSpinner = false;
                    // });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const hms()));
                  });
                  print('Successfully Login');
                }
                catch (e)
                {
                  print(e);
                }
              }),
        Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("New User ?",style: TextStyle(fontSize: 15),),
              ),
              GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const signup()),
                    );

                  },


                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(" Signup",style: TextStyle(fontSize: 20,color: Colors.blue),),
                  )),
            ],
          )

        ],

      ),
    );
  }
}
