import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl: "https://wallpaperaccess.com/full/18441.jpg",
            name: "Temple",
          ),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl: "https://wallpaperaccess.com/full/18447.jpg"),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl: "https://wallpaperaccess.com/full/18442.jpg"),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl: "https://wallpaperaccess.com/full/18443.jpg"),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl: "https://wallpaperaccess.com/full/18444.jpg"),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl: "https://wallpaperaccess.com/full/18446.jpg"),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
