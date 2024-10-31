// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DrawerExample extends StatefulWidget {
  const DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade600,
        title: Text(
          'Drawer Example',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade300,
              ),
              child: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/876345/pexels-photo-876345.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Major Jack Sparrow',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          selectionColor: Colors.blue,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Text(
                            'Nishan-e-Imtiaz(Military)\n32-Punjab Rigement\nPakistan Army',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.5,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(children: <Widget>[
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                title: Text('Profile'),
                onTap: () {},
              ),
              ListTile(
                  leading: Icon(
                    Icons.receipt_rounded,
                    color: Colors.black,
                  ),
                  title: Text('Service Record'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(
                    Icons.h_plus_mobiledata_rounded,
                    color: Colors.black,
                  ),
                  title: Text('Strength & Health'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(
                    Icons.video_collection_outlined,
                    color: Colors.black,
                  ),
                  title: Text('Practice Demo'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.black,
                  ),
                  title: Text('Posting'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(
                    Icons.add_card,
                    color: Colors.black,
                  ),
                  title: Text('Contact Details'),
                  onTap: () {}),
              ListTile(
                  leading: Icon(
                    Icons.stars,
                    color: Colors.black,
                  ),
                  title: Text('Acheivements'),
                  onTap: () {}),
            ]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.stars,
              color: Colors.black,
            ),
            label: 'Services',
          ),
        ],
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
