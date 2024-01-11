import 'package:application/screens/BottomBar.dart';
import 'package:application/InventroyButton.dart';
import 'package:application/Resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class customeradd extends StatefulWidget {
  const customeradd({super.key});

  @override
  State<customeradd> createState() => _customeraddState();
}

class _customeraddState extends State<customeradd> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        actions: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 25, 5),
              child: Container(
                width: screenWidth - 100,
                height: screenheight - 70,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5)),
                // child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    // labelText: 'Username',
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: Padding(
                      padding:
                          const EdgeInsets.all(10.0), // Add padding to the icon
                      child: SvgPicture.asset('assets/images/Vector.svg'),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset('assets/images/Group.svg'),
                    ),
                    hintText: 'Search by Barcode Or Product id',
                    hintStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    labelStyle: const TextStyle(color: Colors.black45),
                    contentPadding: const EdgeInsets.symmetric(vertical: 17.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ])
        ],

        elevation: 0,
        //  shadowColor: Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: Padding(
          padding: const EdgeInsets.only(left: 5, right: 18.0),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/images/Group 300.svg',
              //  color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 10, 20, 18),
              child: Container(
                child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: screenWidth - 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 157, 189, 218),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 10, left: 5),
                          child: Text(
                            ' Master / customer / Add customer',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Customwidget(
                          text: 'Customer Name', hinttext: 'C name'),
                      const Customwidget(
                          text: 'Customer Address', hinttext: 'C Address'),
                      const Customwidget(
                          text: 'Customer Address 2', hinttext: 'C Address 2'),
                      const InventroyButton(text: 'SAVE'),
                    ]),
              )),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
