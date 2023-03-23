import 'package:flutter/material.dart';

class BannerCatalog extends StatelessWidget {
  const BannerCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Summer\nCollection',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Icon(
              Icons.arrow_right_alt,
              size: 48.0,
              color: Colors.white,
            )
          ],
        ));
  }
}
