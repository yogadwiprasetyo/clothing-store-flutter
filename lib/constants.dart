import 'package:flutter/material.dart';

class Products {
  String name;
  String price;
  String description;
  String image;
  List<String> size;
  List<Color> colors;

  Products(
      {required this.name,
      required this.price,
      required this.description,
      required this.image,
      required this.size,
      required this.colors});
}

var productList = [
  Products(
      name: 'Life of Programmer',
      price: 'Rp 80.000',
      description:
          "'Life of Programmer' represents the life that programmers go through by performing repetitive activities like coding, debugging, testing, etc.",
      image: 'images/lifeofprogrammer.png',
      size: ['S', 'M', 'L', 'XL'],
      colors: [Colors.black, Colors.white, Colors.green, Colors.blue]),
  Products(
      name: 'Are We Alone?',
      price: 'Rp 90.000',
      description:
          "A question that is still a mystery. From the beginning of human existence until today, we are still wondering. 'Are we alone?'",
      image: 'images/arewealone.png',
      size: ['XS', 'S', 'M', 'L'],
      colors: [Colors.black, Colors.white]),
  Products(
      name: "Don't be Afraid",
      price: 'Rp 70.000',
      description:
          "The artwork has nothing to do with anything you think. So 'don't be afraid'.",
      image: 'images/dontbeafraid.png',
      size: ['S', 'M', 'L', 'XL'],
      colors: [Colors.black, Colors.white, Colors.green, Colors.blue]),
  Products(
      name: 'Hiding for Something',
      price: 'Rp 80.000',
      description:
          "There are many purposes a person does when he wants to hide. Everyone wants to calm down from hunting. 'Hiding' has an unusual purpose.",
      image: 'images/hidingforsomething.png',
      size: ['XS', 'S', 'M', 'L', 'XL'],
      colors: [Colors.black, Colors.white]),
  Products(
      name: 'Homo Sapiens',
      price: 'Rp 100.000',
      description:
          "Humans who managed to survive all disasters. Humans who succeeded in making the world progress. 'Homo sapiens' have a purpose.",
      image: 'images/homosapiens.png',
      size: ['S', 'M', 'L', 'XL'],
      colors: [Colors.black, Colors.white]),
  Products(
      name: 'Ikigai',
      price: 'Rp 85.000',
      description:
          "The art of living from Japan. It teaches us that life can be enjoyed. 'Ikigai' is the art of finding purpose in life.",
      image: 'images/ikigai.png',
      size: ['S', 'M', 'L'],
      colors: [Colors.black, Colors.white]),
  Products(
      name: 'Offense is Taken not Given',
      price: 'Rp 80.000',
      description:
          "'Offense' is only felt by ourselves. It's all up to us, how we want to respond.",
      image: 'images/offenseistaken.png',
      size: ['M', 'L', 'XL', 'XXL'],
      colors: [Colors.black, Colors.white, Colors.green, Colors.blue]),
  Products(
      name: 'Progress Unsettled',
      price: 'Rp 75.000',
      description:
          "'Progress' has many effects. One of them belongs to the owner. Progress can destroy previous generations, for humans.",
      image: 'images/progressunsetled.png',
      size: ['S', 'M', 'L', 'XL'],
      colors: [Colors.black]),
];

var typesCatalog = ['All', 'R-2022', 'R-2021', 'R-2020', 'Sapiens', 'Mystery'];
