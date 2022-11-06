import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white70,
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                height: 350,
                width: 400,
                image: AssetImage('lib/assets/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, right: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: AssetImage('lib/assets/img.jpg'),
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Container(
                      child: Icon(
                    Icons.settings,
                    size: 30,
                    color: Colors.white,
                  ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100, left: 15),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Welcome back',
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Abdul Waseem',
                      style: TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 210, left: 20, right: 20),
              child: Container(
                height: 370,
                width: 380,
                child: Stack(children: [
                  Container(
                    height: 180,
                    width: 160,
                    child: Card(
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(30),
                            child: Image(
                              image: AssetImage('lib/assets/wash.png'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 130, left: 30),
                            child: Text(
                              'Wash & Iron',
                              style: (TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w900)),
                            ),
                          )
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      shadowColor: Colors.black,
                      elevation: 8,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 180,
                      width: 160,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(30),
                              child: Image(
                                image: AssetImage('lib/assets/iron.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 130, left: 45),
                              child: Text(
                                'Ironing',
                                style: (TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w900)),
                              ),
                            )
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        shadowColor: Colors.black,
                        elevation: 8,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 180,
                      width: 160,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(30),
                              child: Image(
                                image: AssetImage('lib/assets/laundry.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 130, left: 30),
                              child: Text(
                                'Dry Cleaning',
                                style: (TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w900)),
                              ),
                            )
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        shadowColor: Colors.black,
                        elevation: 8,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 180,
                      width: 160,
                      child: Card(
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(30),
                              child: Image(
                                image: AssetImage('lib/assets/darning.png'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 130, left: 45),
                              child: Text(
                                'Darning',
                                style: (TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w900)),
                              ),
                            )
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        shadowColor: Colors.black,
                        elevation: 8,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60,
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 8,
                  color: Colors.white,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          size: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 50),
                          child: Icon(
                            Icons.padding_outlined,
                            size: 30,
                          ),
                        ),
                        Icon(
                          Icons.notifications_none_outlined,
                          size: 30,
                        ),
                        Icon(
                          Icons.person_outline,
                          size: 30,
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 13),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white70),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.amber),
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
