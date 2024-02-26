import 'package:flutter/material.dart';

import 'color.dart';

class flipk extends StatefulWidget {
  const flipk({super.key});

  @override
  State<flipk> createState() => _flipkState();
}

class _flipkState extends State<flipk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        Image(image:AssetImage("assets/img_9.png")),




      ),

      );

  }
}
// Row(
// children: [
// Image(image:AssetImage("assets/img_9.png"),),
// Text("Flipkart",style: TextStyle(
// color: asd,fontWeight: FontWeight.bold,
// fontStyle: FontStyle.normal,fontSize:25
// ),),
// ],
//
//
// ),
// l
//   appBar: AppBar(
//         toolbarHeight: 50,
//
//         title: Column(
//           children: [
//             Row(
//               children: [
//                 Image(image:AssetImage("assets/img_9.png"),),
//                 Text("Flipkart",style: TextStyle(
//                     color: asd,fontWeight: FontWeight.bold,
//                     fontStyle: FontStyle.normal,fontSize:25
//                 ),),
//               ],
//             ),
//             Row(
//               children: [
//                 Text("Brand Mall",style: TextStyle(
//                   fontSize:15,
//                 ),)
//               ],
//
//                  )
//
//           ],
//         ),
//         leadingWidth: 50,
//
//       ),
//
//
// eadingWidth: 150,