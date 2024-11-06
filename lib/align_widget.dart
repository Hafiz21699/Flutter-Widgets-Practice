import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align Widget'),
        centerTitle: true,
      ),
      body: Align(
        //alignment: Alignment.center,   choose acc. to your requirement
        heightFactor:
            6.5, //align can also be set by using height factor and width factor
        widthFactor: 3.2,
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(color: Colors.amber),
        ),
      ),
    );
  }
}
