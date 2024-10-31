// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey.shade200,
            title: Text(
              'Tab Bar Demo',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  fontSize: 27),
            ),
            centerTitle: true,
            elevation: 15,
            shadowColor: const Color.fromARGB(255, 1, 229, 236),
            bottom: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.cyan.withOpacity(0.5),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.deepPurple,
                unselectedLabelColor: Colors.black,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    icon: Icon(
                      Icons.favorite,
                    ),
                    text: 'Favourites',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.recent_actors,
                    ),
                    text: 'Recent',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.dialpad,
                    ),
                    text: 'Keypad',
                  )
                ]),
          ),
          body: TabBarView(children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 1,
                ),
                Text('No Favourites found')
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.recent_actors,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 1,
                ),
                Text('No Recent Dial')
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.dialpad_rounded,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 1,
                ),
                Text('No Dialpad found')
              ],
            )
          ]),
        ));
  }
}
