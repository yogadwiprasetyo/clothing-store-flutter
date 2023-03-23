import 'package:flutter/material.dart';

class ListColor extends StatefulWidget {
  final List<Color> colors;

  const ListColor({Key? key, required this.colors}) : super(key: key);

  @override
  State<ListColor> createState() => _ListColorState();
}

class _ListColorState extends State<ListColor> {
  int indexSelected = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.colors.length,
        itemBuilder: (BuildContext context, int index) {
          final Color color = widget.colors[index];
          return Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: OutlinedButton(
              onPressed: () {
                setState(() {
                  indexSelected = index;
                });
              },
              style: OutlinedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: color,
                padding: const EdgeInsets.all(0.0),
                side: isIndexMatch(index)
                    ? const BorderSide(width: 2.0, color: Colors.red)
                    : null,
              ),
              child: const Text(''),
            ),
          );
        },
      ),
    );
  }

  bool isIndexMatch(int index) {
    return index == indexSelected;
  }
}
