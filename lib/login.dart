import 'package:flutter/material.dart';

class log extends StatefulWidget {
  const log({super.key});

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: Icon(Icons.arrow_back),
        title: Text("Signup"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
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
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.password),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: Size(400, 52)
                ),
                onPressed: (){},
                child: Text("Signup",style: TextStyle(
                    color: Colors.black
                ),)),
          ),
          RichText(text: TextSpan(
              children: [
                TextSpan(text: "You Having account?",style: TextStyle(
                    fontSize: 15
                )),
                TextSpan(text: " Login",style: TextStyle(
                    color: Colors.blue,fontSize: 20
                ))
              ]
          ))

        ],

      ),
    );
  }
}

