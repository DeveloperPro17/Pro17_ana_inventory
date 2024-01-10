import 'package:application/screens/BottomBar.dart';
import 'package:application/screens/Dashboardfix.dart';
import 'package:application/InventroyButton.dart';
import 'package:application/Resources.dart';
import 'package:application/menubar_items/inventroy/c72/c72.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class c72add extends StatefulWidget {
  const c72add({super.key});

  @override
  State<c72add> createState() => _C72addState();
}

class _C72addState extends State<c72add> {
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
              padding: const EdgeInsets.fromLTRB(18, 3, 20, 18),
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
                            ' Inventory /C72/Add Prdouct',
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
                          text: 'Purchase details', hinttext: 'Order Details'),
                      const Customwidget(
                          text: 'Purchase order ld', hinttext: 'Purchase ld'),
                      const Customwidget(
                          text: 'New purchase Order',
                          hinttext: 'Product details'),
                      const Customwidget(
                          text: 'Available quantity', hinttext: ''),
                      const Customwidget(
                          text: 'New sales return',
                          hinttext: 'Product details'),
                      const InventroyButton(text: ' Entry'),
                      const SizedBox(height: 5),
                      const Customwidget(text: 'Enter quantity', hinttext: ''),
                      const Customwidget(text: 'Discount ld', hinttext: ''),
                      const Customwidget(text: 'Price per unit', hinttext: ''),
                      const Customwidget(
                          text: 'Discount percentage', hinttext: ''),
                      const Customwidget(text: 'Net price', hinttext: ''),
                      const InventroyButton(text: ' Product Details'),
                      const SizedBox(height: 5),
                      const Customwidget(text: 'Product ld', hinttext: ''),
                      const Customwidget(text: 'Product name', hinttext: ''),
                      const Customwidget(text: 'Country', hinttext: ''),
                      const Customwidget(text: 'Manufacture ld', hinttext: ''),
                      const Customwidget(text: 'Currency', hinttext: ''),
                      const Customwidget(
                          text: 'Product And Services', hinttext: ''),
                      const Customwidget(
                          text: 'Additional Features', hinttext: ''),
                      const Customwidget(text: 'Buying Price', hinttext: ''),
                      const Customwidget(
                          text: 'Discount Explanation', hinttext: ''),
                      const Customwidget(
                          text: 'Discount Percentage', hinttext: ''),
                      const Customwidget(text: 'Warranty', hinttext: ''),
                      const Customwidget(
                          text: 'Terms And Condition', hinttext: ''),
                      const Customwidget(
                          text: 'Merge ln Percentage ', hinttext: ''),
                      const Customwidget(text: 'Product weight', hinttext: ''),
                      const Customwidget(text: 'Product Width', hinttext: ''),
                      const Customwidget(text: 'Product Height', hinttext: ''),
                      const Customwidget(text: 'Date of Entry', hinttext: ''),
                      const Customwidget(
                          text: 'Date of Modification', hinttext: ''),
                      const Customwidget(
                          text: 'Entry Person Name', hinttext: ''),
                      const Customwidget(
                          text: 'Modified Person Name', hinttext: ''),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 40,

                            // padding: EdgeInsets.all(20),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 5, 134, 255)),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => Dashboardfix()),
                                  );
                                },
                                child: const Text(
                                  'Save',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                )),
                          ),
                          const SizedBox(width: 40),
                          Container(
                            height: 40,

                            // padding: EdgeInsets.all(20),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 5, 134, 255)),
                                onPressed: () {},
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                )),
                          ),
                        ],
                      )
                    ]),
              )),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
