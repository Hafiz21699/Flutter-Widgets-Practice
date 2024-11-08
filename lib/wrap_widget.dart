import 'package:flutter/material.dart';

class WrapWidgetDemo extends StatelessWidget {
  const WrapWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade700,
        title: Text('Wrap Widget Demo'),
        centerTitle: true,
      ),
      body: Wrap(
        children: <Widget>[
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.teal, borderRadius: BorderRadius.circular(15)),
          ),
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.teal, borderRadius: BorderRadius.circular(15)),
          ),
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.teal, borderRadius: BorderRadius.circular(15)),
          ),
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.teal, borderRadius: BorderRadius.circular(15)),
          ),
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.teal, borderRadius: BorderRadius.circular(15)),
          ),
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.teal, borderRadius: BorderRadius.circular(15)),
          ),
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.teal, borderRadius: BorderRadius.circular(15)),
          ),
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.teal, borderRadius: BorderRadius.circular(15)),
          ),
          Text(
            'This is a wrap widget that is used to wrap other widgets in it and is used when the horizontal or vertical space of thescreen ends. By using this , the content will automatically move to the next line when the space ends just like this text and the containers above.',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
