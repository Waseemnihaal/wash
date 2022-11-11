import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (context) {
        return Scaffold(
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900)),
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900)),
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900)),
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
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.transparent),
                            ),
                            onPressed: () {},
                            child: Icon(
                              Icons.home,
                              size: 30,
                              color: Color.fromARGB(255, 3, 88, 6),
                            ),
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.transparent),
                            ),
                            onPressed: () =>
                                Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => History(),
                              ),
                              (route) => false,
                            ),
                            child: Icon(
                              Icons.padding,
                              size: 30,
                              color: Color.fromARGB(255, 3, 88, 6),
                            ),
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.transparent),
                            ),
                            onPressed: () =>
                                Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => Notification(),
                              ),
                              (route) => false,
                            ),
                            child: Icon(
                              Icons.notifications_outlined,
                              size: 30,
                              color: Color.fromARGB(255, 3, 88, 6),
                            ),
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.transparent),
                            ),
                            onPressed: () =>
                                Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => Profile(),
                              ),
                              (route) => false,
                            ),
                            child: Icon(
                              Icons.person_outlined,
                              size: 30,
                              color: Color.fromARGB(255, 3, 88, 6),
                            ),
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
        );
      }),
    );
  }
}

//Myapp

class History extends StatelessWidget {
  const History({super.key});

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
                      'Updated',
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          color: Colors.white),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '\t\tHistory',
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
              padding: EdgeInsets.only(top: 200, left: 10, right: 10),
              child: Container(
                height: 500,
                width: 380,
                child: Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 60, bottom: 10, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '\n\t\tRecent',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Used Iron for 45min.',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Used Darning for 15min.',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '\nThis week',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Used Wash & Ironing for 1h.',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'used Dry Cleaning for 30min.',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '\nThis month',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'used Dry Cleaning for 30min.',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'used Wash & Ironing for 1h\n30min.',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'used Darning for 30min.',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      width: 50,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 53),
                            child: Image(
                              image: AssetImage('lib/assets/iron.png'),
                              height: 33,
                              width: 33,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image(
                              image: AssetImage('lib/assets/darning.png'),
                              height: 33,
                              width: 33,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: Image(
                              image: AssetImage('lib/assets/wash.png'),
                              height: 33,
                              width: 33,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 13),
                            child: Image(
                              image: AssetImage('lib/assets/laundry.png'),
                              height: 33,
                              width: 33,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: Image(
                              image: AssetImage('lib/assets/laundry.png'),
                              height: 33,
                              width: 33,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image(
                              image: AssetImage('lib/assets/wash.png'),
                              height: 33,
                              width: 33,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image(
                              image: AssetImage('lib/assets/darning.png'),
                              height: 33,
                              width: 33,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 500,
                        width: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                '\n',
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                '2h',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                '3h',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                '\n',
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                '2d',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  '3d',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                '\n',
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                '8d',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                '12d',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  '17d',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
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
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.transparent),
                          ),
                          onPressed: () =>
                              Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => MyApp(),
                            ),
                            (route) => false,
                          ),
                          child: Icon(
                            Icons.home_outlined,
                            size: 30,
                            color: Color.fromARGB(255, 3, 88, 6),
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.transparent),
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.padding_sharp,
                            size: 30,
                            color: Color.fromARGB(255, 3, 88, 6),
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.transparent),
                          ),
                          onPressed: () =>
                              Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => Notification(),
                            ),
                            (route) => false,
                          ),
                          child: Icon(
                            Icons.notifications_outlined,
                            size: 30,
                            color: Color.fromARGB(255, 3, 88, 6),
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.transparent),
                          ),
                          onPressed: () =>
                              Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => Profile(),
                            ),
                            (route) => false,
                          ),
                          child: Icon(
                            Icons.person_outlined,
                            size: 30,
                            color: Color.fromARGB(255, 3, 88, 6),
                          ),
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

//History

class Notification extends StatelessWidget {
  const Notification({super.key});

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
                padding: EdgeInsets.only(top: 150, left: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '\tNotifications',
                    style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(top: 200, left: 10, right: 10),
              child: Container(
                height: 500,
                width: 380,
                child: Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '\n\t\tOn process',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 5,
                              color: Color.fromARGB(255, 3, 88, 6),
                            ),
                            borderRadius: BorderRadius.circular(100)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image(
                            image: AssetImage('lib/assets/laundry.png'),
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 300),
                          child: Text(
                            '28min left',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.transparent),
                          ),
                          onPressed: () =>
                              Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => MyApp(),
                            ),
                            (route) => false,
                          ),
                          child: Icon(
                            Icons.home_outlined,
                            size: 30,
                            color: Color.fromARGB(255, 3, 88, 6),
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.transparent),
                          ),
                          onPressed: () =>
                              Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => History(),
                            ),
                            (route) => false,
                          ),
                          child: Icon(
                            Icons.padding_outlined,
                            size: 30,
                            color: Color.fromARGB(255, 3, 88, 6),
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.transparent),
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.notifications,
                            size: 30,
                            color: Color.fromARGB(255, 3, 88, 6),
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.transparent),
                          ),
                          onPressed: () =>
                              Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => Profile(),
                            ),
                            (route) => false,
                          ),
                          child: Icon(
                            Icons.person_outlined,
                            size: 30,
                            color: Color.fromARGB(255, 3, 88, 6),
                          ),
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

//Notification

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                  Text(
                    '\tProfile',
                    style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
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
              padding: EdgeInsets.only(top: 90, left: 140),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.white),
                    borderRadius: BorderRadius.circular(100)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: AssetImage('lib/assets/img.jpg'),
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 200, left: 10, right: 10),
              child: Container(
                height: 500,
                width: 380,
                child: Card(
                  color: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '\n\t\tUsername',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          '@waseem_nihal_',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '\t\tName',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Abdul waseem',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '\t\tMobile no.',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          '+91-9789956405\n',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          '\t\tEmail id',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'waseemnihal@gmail.com\n',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
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
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.transparent),
                          ),
                          onPressed: () =>
                              Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => MyApp(),
                            ),
                            (route) => false,
                          ),
                          child: Icon(
                            Icons.home_outlined,
                            size: 30,
                            color: Color.fromARGB(255, 3, 88, 6),
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.transparent),
                          ),
                          onPressed: () =>
                              Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => History(),
                            ),
                            (route) => false,
                          ),
                          child: Icon(
                            Icons.padding_outlined,
                            size: 30,
                            color: Color.fromARGB(255, 3, 88, 6),
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.transparent),
                          ),
                          onPressed: () =>
                              Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (context) => Notification(),
                            ),
                            (route) => false,
                          ),
                          child: Icon(
                            Icons.notifications_outlined,
                            size: 30,
                            color: Color.fromARGB(255, 3, 88, 6),
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.transparent),
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.person,
                            size: 30,
                            color: Color.fromARGB(255, 3, 88, 6),
                          ),
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

//Profile
