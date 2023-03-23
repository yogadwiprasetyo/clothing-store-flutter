import 'package:flutter/material.dart';

class CartButton extends StatefulWidget {
  const CartButton({Key? key}) : super(key: key);

  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  bool insideCart = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          insideCart = !insideCart;
        });
      },
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: insideCart ? Colors.red : Colors.blue),
      child: Text(insideCart ? 'Remove from Cart' : 'Add to Cart'),
    );
  }
}
