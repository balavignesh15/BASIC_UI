import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'fktimgclas.dart';

class flipkart extends StatefulWidget {
  const flipkart({super.key});

  @override
  State<flipkart> createState() => _flipkartState();
}

class _flipkartState extends State<flipkart> {
 bool  _switch=false;
 int currentposition=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        leading: Image(image:AssetImage("assets/img_9.png"),),
        title: Text("Flipkart",style: TextStyle(
          color: Colors.blue,fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,fontSize:25
        ),),
      ),
      body:Column(
        children: [
          // Row(mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //
          //   ],
          // ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 60,
                width: 100,
                child: Column(
                  children: [
                    Flexible(child:Text("Brand Mall",style: TextStyle(
                      fontSize:15,
                    ),) ),
                    Switch(
                        value: _switch,
                        onChanged: (value){
                      setState(() {
                        //Navigator.of(context).pop();
                      });
                        } ),
                  ],
                ),
              ),
              SizedBox(height: 100,
                width: 310,
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    width: 300,
                    child: TextFormField(
                      decoration:(InputDecoration(
                        prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(),
                          hintText: "Search"
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),


          Container(
            color: Colors.white,
            height: 200,
            width:  double.infinity,
            child:   CarouselSlider.builder(
                options: CarouselOptions(
                  aspectRatio: 50/9,
                  viewportFraction: 1,
                  initialPage: 0,
                  height: 200,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (index,reason){
                    setState(() {
                      var currentposition=index;

                    });
                  },
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: a1.length,
                itemBuilder: (BuildContext con,index,c)
                {
                  return Container(
                    height: 100,
                    width:  double.infinity,
                    color: Colors.lightGreen,
                    child: Image(image: AssetImage(a1[index].image)),

                    );



                }
            ),



          ),

          DotsIndicator(
            dotsCount: a1.length,
            position: currentposition,
            decorator: DotsDecorator(
              color: Colors.black87, // Inactive color
              activeColor: Colors.black,
            ),
          ),









          Container(
            color: Colors.white,
            height: 200,
            width:  double.infinity,
            child:   CarouselSlider.builder(
                options: CarouselOptions(
                  aspectRatio: 50/9,
                  viewportFraction: 1,
                  initialPage: 0,
                  height: 200,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (index,reason){
                    setState(() {

                    });
                  },
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: a1.length,
                itemBuilder: (BuildContext con,index,c)
                {
                  return Container(
                    height: 100,
                    width:  double.infinity,
                    color: Colors.lightGreen,
                    child: Image(image: AssetImage(a1[index].image),
                      fit: BoxFit.fill,
                    ),

                  );
                }
            ),

          ),

          ///carouselSlider dotindicator details

          DotsIndicator(
            dotsCount: a1.length,
            position: currentposition,
            decorator: DotsDecorator(
              color: Colors.black87, // Inactive color
              activeColor: Colors.amber,
            ),
          ),

























        ],

        
      )
      ,

    );
  }
}








































