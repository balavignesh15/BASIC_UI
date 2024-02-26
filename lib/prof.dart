import 'package:flutter/material.dart';

import 'loginpage.dart';

class vj extends StatefulWidget {
  const vj({super.key});

  @override
  State<vj> createState() => _vjState();
}

class _vjState extends State<vj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text("Profile",)),
      ),
      body: Column(
        children: [

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(030),
                child: Text(("Report 1"), style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold
                )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ListTile(
              tileColor: Colors.cyan,
              title: Text("Report 1"),
              trailing: Icon(Icons.arrow_right),
              leading: Icon(Icons.report),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(("Report 1"), style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold
                )),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ListTile(
              tileColor: Colors.cyan,
              title: Text("Report 1"),
              trailing: Icon(Icons.arrow_right),
              leading: Icon(Icons.report),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                Text("Logout"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder:
                  (context) => const login())
              );
              },
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Logout"
                  ,style: TextStyle(
                  fontSize: 25,color: Colors.black,fontWeight:FontWeight.w700
                ),

                ),
                SizedBox(width: 20,),

                Icon(Icons.logout,color: Colors.black,)
              ],
            ),),
          ),


        ],
      ),
    );
  }}
