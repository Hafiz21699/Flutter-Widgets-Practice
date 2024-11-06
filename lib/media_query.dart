// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MediaQueryDemo extends StatelessWidget {
  const MediaQueryDemo({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade600,
        title: Text(
          'Media Query',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: _mediaquery.width * 0.5,
            height: _mediaquery.height * 0.8,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small_2x/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://static.vecteezy.com/system/resources/previews/023/578/758/non_2x/royal-lion-wearing-a-gold-crown-and-red-cloak-sitting-on-a-golden-and-red-throne-golden-shining-king-of-beasts-lion-on-a-royal-golden-throne-ai-generative-illustration-photo.jpg'),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
