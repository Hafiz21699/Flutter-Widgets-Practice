import 'package:flutter/material.dart';

class NestedScrollViewExample extends StatelessWidget {
  const NestedScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text(
                  "Nested Scroll View Example",
                  style: TextStyle(color: Colors.white),
                ),
                background: Image.network(
                  "https://c4.wallpaperflare.com/wallpaper/891/529/106/pubg-poster-hearthstone-battlegrounds-steam-software-comic-art-hd-wallpaper-preview.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("Item $index"),
            );
          },
        ),
      ),
    );
  }
}
