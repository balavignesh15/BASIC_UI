import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/firbase2/auth_contl.dart';

import 'logs.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool showSpinner = false;
  String email = '';
  String password = '';
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var emailController=TextEditingController();
    var passwoedController=TextEditingController();


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
          leading: GestureDetector(
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const logii()),
                );

              },

              child: Icon(Icons.arrow_back)),
          title: Text("Signup"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
             controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: passwoedController,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.password),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          ElevatedButton(
              child: const Text('Register'),
              onPressed: () async {
                setState(() {
                  showSpinner = true;
                });
                //Create new Account
                try {
                  await _auth.createUserWithEmailAndPassword(
                      email: email, password: password).then((value) {
                    setState(() {
                      showSpinner = false;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const logii()));
                    print('Successfully Created');
                  });
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
                child: Text("You Having Account ?",style: TextStyle(fontSize: 15),),
              ),
              GestureDetector(
                  onTap: ()
                  {
                    AuthController.instance.register(emailController.text.trim(),passwoedController.text.trim());
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const logii()),
                    );

                  },


                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(" Login",style: TextStyle(fontSize: 20,color: Colors.blue),),
                  )),
            ],
          )

        ],

      ),
    );
  }
}
