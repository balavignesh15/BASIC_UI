import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'fktimgclas.dart';
import 'flips.dart';

class productpage extends StatefulWidget {
  const productpage({super.key});

  @override
  State<productpage> createState() => _productpageState();
}

class _productpageState extends State<productpage> {

  int currentposition=0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white54,
          leading: Icon(Icons.arrow_back),
          title: SizedBox(height: 40,
            width: 280,
            child: TextFormField(
              decoration:(InputDecoration(
                prefixIcon: Icon(Icons.search,),
                border: OutlineInputBorder(),
                hintText: "Search",

                hintStyle: TextStyle(color: Colors.black),
                suffixIcon: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.mic),
                    ),
                  ],
                ),
              )),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(Icons.shopping_cart),
            ),
          ],
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Container(
                height: MediaQuery.of(context).size.height*0.95,
                child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 65,
                      width: 400,
                      color: Colors.blue,
                      child: CarouselSlider(
                        items: [
                          Row(
                          children: [
                            Container(
                              height: 65,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/img_15.png"),fit: BoxFit.fill,
                                )
                              ),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mobile",
                                  style: TextStyle(fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                Text("Men Red Genuine and get 20% for debit card",
                                  style: TextStyle(color: Colors.white54),),
                                Text("94% off",
                                  style: TextStyle(color: Colors.black),),
                              ],
                            ),
                           ],
                          ),
                         ],
                        options: CarouselOptions(
                        onPageChanged: (index,per){
                          setState(() {
                            currentposition = index;
                          });
                        },
                        viewportFraction: 1,
                        height: 100,
                        autoPlay: true,
                        enlargeCenterPage: false,
                        autoPlayInterval:Duration(seconds: 4),
      
                      ),),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Stack(
                          children: [
                            CarouselSlider(
                              items: [
                                Container(//color: Colors.blueGrey,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage("assets/img_20.png"),
                                          ),
                                  ),
                                ),

                                Container(//color: Colors.blueGrey,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0),
                                      image: DecorationImage(
                                          image: AssetImage("assets/img_22.png"),
                                          ),
                                  ),
                                ),
                              ],
                              options:CarouselOptions(
                                onPageChanged: (index,per){
                                  setState(() {
                                    currentposition = index;
                                  });
                                },
                                viewportFraction: 1,
                                height: 400,
                                autoPlay: true,
                                enlargeCenterPage: false,
                                autoPlayInterval:Duration(seconds: 3),

                              ),
                            ),
                            Positioned(child: Icon(Icons.favorite),
                              right: 20,top: 10,
                            ),
                          ],
                        ),
                        DotsIndicator(
      
                          dotsCount: 4,
                          position: currentposition,
                          decorator: DotsDecorator(
                            color: Colors.purple, // Inactive color
                            activeColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("MEN WALLET",style: TextStyle(color: Colors.black,
                                  fontSize: 18,fontWeight: FontWeight.bold),),
                              Text("Men casual Brown Artificial Leather",style: TextStyle(color: Colors.black,
                                  fontSize: 18,fontWeight: FontWeight.normal),),
                              Text("(8 Cards slots)",style: TextStyle(color: Colors.red,
                                  fontSize: 16,fontWeight: FontWeight.normal),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 150,
                            width: 390,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Minimum Order quantity: 3",
                                    style: TextStyle(color: Colors.black,
                                      fontSize: 14,fontWeight: FontWeight.normal),),
                                ),
                                 Row(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.all(5.0),
                                       child: RatingBar.builder(

                                         initialRating: 4.5,
                                         minRating: 1,
                                         direction: Axis.horizontal,
                                         allowHalfRating: true,
                                         itemBuilder:
                                             (context,_)=>Icon(Icons.star,
                                           size: 10,color: Colors.green,),
                                         onRatingUpdate: (rating) {
                                           print(rating);
                                         },
                                         itemSize: 25,
                                          ),
                                     ),
                                     RichText(
                                       text: TextSpan(
                                         children: const <TextSpan>[
                                           TextSpan(text: 'Average', style: TextStyle(fontSize: 17,
                                               fontWeight: FontWeight.bold,
                                               color: Colors.blue
                                               )),
                                             TextSpan(text: '.1000 rating',
                                               style: TextStyle(
                                                 fontSize: 15,
                                                 color: Colors.blue,
                                             fontWeight: FontWeight.normal,)),
                                         ],
                                       ),
                                     ),
                                   ],
                                 ),
                                Text.rich(
                                  TextSpan(
                                  text: '83% off ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.green,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '  399',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                     TextSpan(
                                      text: ' ₹66' ,
                                    ),
                                  ],
                                ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: const <TextSpan>[
                                        TextSpan(text: "Apply For a Flipkart Axis Bank credit Card to  get 5% cash back.",
                                         style: TextStyle(fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black
                                        )),
                                        TextSpan(text: ' Apply here',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,)),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 90,
                            width: 390,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: RichText(
                                        text: TextSpan(
                                          children: const <TextSpan>[
                                            TextSpan(text: "Deliver to:",
                                                style: TextStyle(fontSize: 18,
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.black54
                                                )),
                                            TextSpan(text: ' Vicky, 638109',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Row(

                                    children: [
                                      Text("38,ammankovil,ammankovil(po),erode..."
                                      ),
                                      SizedBox(width: 25,),
                                      ElevatedButton(
                                       onPressed: () {},
                                       child: Text('Change'),
                                       style: ElevatedButton.styleFrom(
                                         shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(5)
                                         ),
                                         textStyle: const TextStyle(
                                             color: Colors.black,
                                             fontSize: 15,
                                             fontStyle: FontStyle.normal),
                                         maximumSize: Size(130, 50)
                                       ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),

                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 390,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3),
                                      child: RichText(
                                        text: TextSpan(
                                          children: const <TextSpan>[

                                            TextSpan(text: 'All offers & Coupans',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("1000+ people orderd this in the last 20 days"
                                      ),
                                       ],
                                  ),
                                ),

                              ],
                            ),

                          ),
                        ],
                      ),
                    ),
      
      
                  ],
                ),
      
                        ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Row(
                children: [
      
                  Container(
                    height: MediaQuery.of(context).size.height*0.05,
                    width: MediaQuery.of(context).size.width*0.5,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                    ),
                    child: Center(child: Text("Go To Cart",
                      style:TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold
                      ) ,)),
                  ),
                  Container(
      
                    height: MediaQuery.of(context).size.height*0.05,
                    width: MediaQuery.of(context).size.width*0.5,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                    ),
                    child: Center(child: Text("Buy Now",
                      style:TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold
                      ) ,)),
      
                  )
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}



