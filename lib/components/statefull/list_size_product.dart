import 'package:flutter/material.dart';

class ListSize extends StatefulWidget {
  final List<String> sizes;

  const ListSize({Key? key, required this.sizes}) : super(key: key);

  @override
  State<ListSize> createState() => _ListSizeState();
}

class _ListSizeState extends State<ListSize> {
  int _indexSelected = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.sizes.length,
        itemBuilder: (BuildContext context, int index) {
          final String size = widget.sizes[index];
          return Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: OutlinedButton(
              onPressed: () {
                setState(() {
                  _indexSelected = index;
                });
              },
              style: ElevatedButton.styleFrom(
                  side: isIndexMatch(index)
                      ? const BorderSide(color: Colors.blue)
                      : null,
                  textStyle: isIndexMatch(index)
                      ? const TextStyle(fontWeight: FontWeight.bold)
                      : const TextStyle(fontWeight: FontWeight.normal),
                  shape: const StadiumBorder()),
              child: Text(size),
            ),
          );
        },
      ),
    );
  }

  bool isIndexMatch(int index) {
    return index == _indexSelected;
  }
}
