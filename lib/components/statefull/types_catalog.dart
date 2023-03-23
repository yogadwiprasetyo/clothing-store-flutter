import 'package:flutter/material.dart';

import '../../constants.dart';

class TypesCatalog extends StatefulWidget {
  const TypesCatalog({Key? key}) : super(key: key);

  @override
  State<TypesCatalog> createState() => _TypesCatalogState();
}

class _TypesCatalogState extends State<TypesCatalog> {
  int _indexSelected = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: typesCatalog.length,
        itemBuilder: (BuildContext context, int index) {
          final String type = typesCatalog[index];
          return Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    _indexSelected = index;
                  });
                },
                style: ElevatedButton.styleFrom(
                    primary: isIndexMatch(index) ? Colors.blue : null,
                    onPrimary: isIndexMatch(index) ? Colors.white : null,
                    shape: const StadiumBorder()),
                child: Text(type)),
          );
        },
      ),
    );
  }

  bool isIndexMatch(int index) {
    return index == _indexSelected;
  }
}
