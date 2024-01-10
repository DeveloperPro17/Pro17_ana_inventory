import 'package:flutter/material.dart';

class InventroyButton extends StatelessWidget {
  final String text;
  const InventroyButton({required this.text});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenheight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth - 40,
      height: 40,

      // padding: EdgeInsets.all(20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 5, 134, 255)),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
