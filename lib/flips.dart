import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled/fktimgclas.dart';
import 'package:untitled/product.dart';

import 'color.dart';

class flips extends StatefulWidget {
  const flips({super.key});
  @override
  State<flips> createState() => _flipsState();
}
class _flipsState extends State<flips> {
  bool  _switch=false;

  int currentposition=0;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                toolbarHeight: 120,
                expandedHeight: 120,
                automaticallyImplyLeading: false,

      
                title: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height:40,
                          width: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/img_9.png")
                              )
                          ),
                          // child: Image(image:AssetImage("assets/img_9.png"),)
                        ),
                        Text("Flipkart",style: TextStyle(
                            color: asd,fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,fontSize:24
                        ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        width: 400,
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 90,
                              width:  70,
                              child: Column(
                                children: [
                                  Flexible(child:Text("Brand Mall",style: TextStyle(
                                    fontSize:12,
                                  ),
                                  ),
                                  ),
                                  Container(
                                    height: 50,
                                    width:  50,
                                    child: FittedBox(
                                      child: Switch(
                                          value: _switch,
                                          onChanged: (value){
                                            setState(() {
                                              //Navigator.of(context).pop();
                                            });
                                          } ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 60,
                              width:300,
      
                              child: TextFormField(
      
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter a search term',
                                  hintStyle: TextStyle(
                                    color: Colors.black
                                  ),
                                  suffixIcon:
                                  SizedBox(
                                    height: 70,
                                    width: 90,
                                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
      
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.mic),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.camera),
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                              ),
      
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
      
              )
            ];
          }, body:  SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                items: [
                  Container(//color: Colors.blueGrey,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        image: DecorationImage(
                            image: AssetImage("assets/img_10.png"),
                            fit: BoxFit.fill)
                    ),),
                  Container(//color: Colors.blueGrey,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        image: DecorationImage(
                            image: AssetImage("assets/img_11.png"),
                            fit: BoxFit.fill)
                    ),),
                  Container(//color: Colors.blueGrey,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        image: DecorationImage(
                            image: AssetImage("assets/img_12.png"),
                            fit: BoxFit.fill)
                    ),),
                  Container(//color: Colors.blueGrey,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        image: DecorationImage(
                            image: AssetImage("assets/img_13.png"),
                            fit: BoxFit.fill)
                    ),),
                ],
                options:CarouselOptions(
                  onPageChanged: (index,per){
                    setState(() {
                      currentposition = index;
                    });
                  },
                  viewportFraction: 1,
                  height: 200,
                  autoPlay: true,
                  enlargeCenterPage: false,
                  autoPlayInterval:Duration(seconds: 2),
      
                ),
              ),
              DotsIndicator(
      
                dotsCount: 4,
                position: currentposition,
                decorator: DotsDecorator(
                  color: Colors.grey, // Inactive color
                  activeColor: Colors.black,
                ),
              ),
      
      
              ///listview details
      
      
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  child: ListView.builder(scrollDirection: Axis.horizontal,
                      itemCount: a2.length,
                      itemBuilder: (BuildContext con, index){
                        return Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5,right: 5),
                            child: Container(
                              height: 100,
                              width:  100,
                              decoration: BoxDecoration(shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(a2[index].image),fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Text(a2[index].text,style: TextStyle(color: Colors.black,
                              fontSize: 16,fontWeight: FontWeight.normal),),
                        ],
                        );
                      }
                     ),
                    ),
                    ),
                    Container(
                      height: 40,
                      width: 600,
                      color: Colors.blueAccent,
                      child: Column(
                        children: [
                          Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Discounts for You",style: TextStyle(color: Colors.white,fontSize: 20),),
                              ),
                              //SizedBox(width: 310,),
                              Icon(Icons.arrow_right,size: 35,color: Colors.white,),
                            ],
                          ),
                        ],
                      ),
      
                    ),
                    Container(
                      color: Colors.blueAccent,
                     height:700,
                      child: GestureDetector(
                       onTap: ()
                       {
                       Navigator.push(
                             context,
                              MaterialPageRoute(builder: (context) => const productpage()),
                                  );
                               },
                        child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                         mainAxisSpacing: 20,
                         crossAxisSpacing: 15,
                           ),
                         itemCount: 6,
                         shrinkWrap: true,
                         physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                    height: 130,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      image: DecorationImage(
                                        image: AssetImage(a3[index].image),fit: BoxFit.fill
                                      ),
                                    )),
                                  ),
                                  Column(
                                    children: [
                                      Text(a3[index].text,style: TextStyle(color: Colors.white,
                                          fontSize: 18,fontWeight: FontWeight.bold),),
                                      Text(a4[index].text,style: TextStyle(color: Colors.black,
                                          fontSize: 16,fontWeight: FontWeight.normal),),
                                    ],
                                  ),
      
                                ],
                              );
                            }),
                      )
                        )
      ]),
      )
      )
      ),
    );
          }
        }




// Positioned(
// child: Column(
// children: [
// Text("Mobile",
// style: TextStyle(color: Colors.green,
// fontSize: 20,fontWeight:FontWeight.bold),
// ),
// Text("data",
// style: TextStyle(color: Colors.cyanAccent,fontSize: 20),
// ),
// ],
// ),
// bottom: 15, left: 20,
// ),





















