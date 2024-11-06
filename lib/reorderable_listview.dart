import 'package:flutter/material.dart';

class ReOrderableListDemo extends StatefulWidget {
  const ReOrderableListDemo({super.key});

  @override
  State<ReOrderableListDemo> createState() => _ReOrderableListDemoState();
}

class _ReOrderableListDemoState extends State<ReOrderableListDemo> {
  final List<String> _countries = [
    'USA',
    'Canada',
    'Mexico',
    'Brazil',
    'Argentina',
    'Chile',
    'Peru',
    'Colombia',
    'Venezuela',
    'Ecuador',
    'Bolivia',
    'Paraguay',
    'Uruguay',
    'Guyana',
    'Suriname',
    'French Guiana',
    'Cuba',
    'Haiti',
    'Dominican Republic',
    'Puerto Rico',
    'Nicaragua',
    'Costa Rica',
    'Guatemala',
    'Honduras',
    'El Salvador',
    'Bahamas',
    'Jamaica',
    'Barbados',
    'Saint Kitts and Nevis',
    'Saint Lucia',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text(
          'Reorderable List Demo',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ReorderableListView.builder(
        itemBuilder: (context, index) {
          // Cycle through the primary colors with a light opacity for background color
          final color = Colors.primaries[index % Colors.primaries.length]
              .withOpacity(0.2);

          return Card(
            key: ValueKey(_countries[index]),
            color: color, // Set background color for each item
            child: ListTile(
              title: Text(
                  '${index + 1}. ${_countries[index]}'), // Display the index number
            ),
          );
        },
        itemCount: _countries.length,
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final item = _countries.removeAt(oldIndex);
            _countries.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
