import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class hms extends StatefulWidget {
  const hms({super.key});

  @override
  State<hms> createState() => _hmsState();
}

class _hmsState extends State<hms> {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:Text("Home"),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
            ),
          ),

        ],
      ),
    );
  }
}
