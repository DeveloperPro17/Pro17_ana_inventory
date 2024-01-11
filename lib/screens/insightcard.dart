import 'package:application/menubar_items/inventroy/c72/c72.dart';
import 'package:application/menubar_items/master/customer/customer.dart';
import 'package:application/menubar_items/master/product/product.dart';
import 'package:application/menubar_items/master/vendor/vendor.dart';
import 'package:application/screens/BottomBar.dart';
import 'package:application/screens/Loginscreen.dart';
import 'package:application/menubar_items/inventroy/R5/R5.dart';

import 'package:application/menubar_items/inventroy/r6/R6.dart';
import 'package:application/menubar_items/master/manufacturer/manufacturer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';

class insightcard extends StatefulWidget {
  @override
  State<insightcard> createState() => _insightcardState();
}

class _insightcardState extends State<insightcard> {
  bool _isExpanded = false;

  Future<void> logout() async {
    final GoogleSignIn googleSign = GoogleSignIn();
    await googleSign.signOut();
  }

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
              padding: const EdgeInsets.fromLTRB(40, 5, 25, 5),
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
        child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
            child: Container(
              width: 195,
              height: double.infinity,
              child: CustomScrollView(slivers: [
                SliverList(
                  delegate: SliverChildListDelegate([
                    const ListTile(
                      title: Text('Dashboard'),
                      leading: Icon(Icons.home),
                      contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    ),
                    ExpansionTile(
                        title: const Text(
                          'Inventroy',
                          selectionColor: Colors.grey,
                          style: TextStyle(
                              decorationColor: Colors.grey,
                              color: Colors.black),
                        ),
                        leading: const Icon(Icons.inventory),
                        tilePadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        iconColor: Colors.grey,
                        children: [
                          ExpansionTile(
                            title: const Text(
                              'Add To Inventory',
                              selectionColor: Colors.grey,
                              style: TextStyle(
                                  decorationColor: Colors.grey,
                                  color: Colors.black),
                            ),
                            children: [
                              ExpansionTile(
                                  title: Text(
                                    'Product Model',
                                    style: TextStyle(
                                      color: _isExpanded
                                          ? Colors.black
                                          : Colors
                                              .black, // Text color for the ExpansionTile title
                                    ),
                                  ),
                                  onExpansionChanged: (bool expanding) {
                                    setState(() {
                                      _isExpanded = expanding;
                                    });
                                  },
                                  // backgroundColor: Colors.blue,
                                  children: [
                                    ListTile(
                                      title: const Text(
                                        'R5',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 241, 243, 243),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => r5()));
                                      },
                                      tileColor:
                                          Color.fromARGB(255, 146, 25, 27),
                                    ),
                                    ListTile(
                                      title: const Text(
                                        'R6',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 241, 238, 238),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => r6()));
                                      },
                                      tileColor:
                                          Color.fromARGB(255, 146, 25, 27),
                                    ),
                                    ListTile(
                                      title: const Text(
                                        'C72',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 251, 250, 250),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => c72()));
                                      },
                                      tileColor:
                                          Color.fromARGB(255, 146, 25, 27),
                                    ),
                                  ]),
                            ],
                          ),
                        ]),
                    ExpansionTile(
                        title: Text(
                          'Master Details',
                          selectionColor: Colors.grey,
                          style: TextStyle(
                              decorationColor: Colors.grey,
                              color: Colors.black),
                        ),
                        leading: const Icon(Icons.dataset_linked),
                        tilePadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        iconColor: Colors.grey,
                        children: [
                          ListTile(
                            title: Text(
                              'Add Manufacturer',
                              style: TextStyle(
                                color: Color.fromARGB(255, 251, 250, 250),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => manufacturer()));
                            },
                            tileColor: Color.fromARGB(255, 146, 25, 27),
                          ),
                          ListTile(
                            title: Text(
                              'Add Product',
                              style: TextStyle(
                                color: Color.fromARGB(255, 251, 250, 250),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => product()));
                            },
                            tileColor: Color.fromARGB(255, 146, 25, 27),
                          ),
                          ListTile(
                            title: Text(
                              'Add Customer',
                              style: TextStyle(
                                color: Color.fromARGB(255, 251, 250, 250),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => customer()));
                            },
                            tileColor: Color.fromARGB(255, 146, 25, 27),
                          ),
                          ListTile(
                            title: Text(
                              'Add Vendor',
                              style: TextStyle(
                                color: Color.fromARGB(255, 251, 250, 250),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => vendor()));
                            },
                            tileColor: Color.fromARGB(255, 146, 25, 27),
                          ),
                        ]),
                    ListTile(
                      leading: Icon(Icons.logout),
                      iconColor: Colors.white,
                      title: const Text(
                        'LogOut',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      onTap: () async {
                        await logout();
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Loginscreen()));
                      },
                      tileColor: const Color.fromARGB(255, 146, 25, 27),
                    ),
                  ]),
                )
              ]),
            )),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
