import 'package:application/Onboarding.dart';
import 'package:flutter/material.dart';


void main() {
  
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home:Onboarding()
    );
  }
}