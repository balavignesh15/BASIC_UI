import 'package:flutter/material.dart';


class sli extends StatefulWidget {
  const sli({super.key});

  @override
  State<sli> createState() => _sliState();
}

class _sliState extends State<sli> {
  int _index = 0;

  final pages = [
    sli(),
  ];

  void tap(index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.red,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Colors.black,
              ),
              label: "Account"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.library_add,
                color: Colors.blue,
              ),
              label: "Library"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.multitrack_audio,
                color: Colors.green,
              ),
              label: "premium"),
        ],
        currentIndex: _index,
        onTap: tap,
      ),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Colors.brown,
          pinned: true,
          leading: Icon(Icons.arrow_back),
          actions: [
            Icon(
              Icons.thumb_up,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.download_for_offline,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
          expandedHeight: 300.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'Hot Hits Tamil',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.lightGreen),
              textScaleFactor: 1,
            ),
            background: Container(
              height: 100,
              width: 100,
              foregroundDecoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0, 10.0],
                ),
              ),
              child: Container(
                child: Image.asset(
                  'assets/img/leo.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        SliverAppBar(
          backgroundColor: Colors.transparent,
          pinned: true,
          actions: [
            Icon(
              Icons.share,
              color: Colors.white,
              size: 40,
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                Icons.play_arrow,
                size: 40,
              ),
              radius: 40,
            )
          ],
          title: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.download_for_offline,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 40,
              )
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (_, int index) {
              return ListTile(
                leading: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/leo.jpg"),
                    ),
                  ),
                ),
                title: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Naa Ready(From "Leo")',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            RichText(
                              text: TextSpan(
                                  style: TextStyle(color: Colors.white),
                                  children: [
                                    TextSpan(
                                      text: 'LYRICS',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          background: Paint()
                                            ..color = Colors.grey,
                                          color: Colors.white),
                                    ),
                                  ]),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '   Thalapathy',
                              style: TextStyle(color: Colors.orange),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
