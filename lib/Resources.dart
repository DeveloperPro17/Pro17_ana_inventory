import 'package:flutter/material.dart';

class Customwidget extends StatelessWidget {
  final String text;
  final String hinttext;
  

  const Customwidget({required this.text, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenheight = MediaQuery.of(context).size.height;
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 10),
        Container(
          width: screenWidth - 40,
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              hintText: hinttext,
              hintStyle: TextStyle(color: Colors.grey),
              isDense: true,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12, horizontal: 5.0),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(2.0)),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
      ]),
    );
  }
}
