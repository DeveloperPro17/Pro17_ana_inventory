import 'package:application/BottomBar.dart';
import 'package:application/Loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'bottom.dart';

class insightcard extends StatefulWidget {
  @override
  State<insightcard> createState() => _insightcardState();
}

class _insightcardState extends State<insightcard> {
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
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Container(
              width: 195,
              height: double.infinity,
              child: CustomScrollView(slivers: [
                SliverList(
                  delegate: SliverChildListDelegate([
                    const ListTile(
                      title: Text('Dashboard'),
                      leading: Icon(Icons.home),
                    ),
                    ExpansionTile(
                        title: const Text(
                          'Stockpile',
                          selectionColor: Colors.grey,
                          style: TextStyle(
                              decorationColor: Colors.grey,
                              color: Colors.black),
                        ),
                        leading: const Icon(Icons.inventory),
                        iconColor: Colors.grey,
                        children: [
                          ExpansionTile(
                            title: const Text(
                              'Inventory',
                              selectionColor: Colors.grey,
                            ),
                            children: [
                              const ListTile(
                                title: Text(
                                  'Stock list',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 93, 102, 121),
                                  ),
                                ),
                                tileColor: Color.fromARGB(255, 146, 25, 27),
                              ),
                              ListTile(
                                title: const Text(
                                  'Add product',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Addproduct()));
                                },
                                tileColor:
                                    const Color.fromARGB(255, 146, 25, 27),
                              ),
                            ],
                          ),
                          const ExpansionTile(
                            title: Text(
                              'Product',
                              // selectionColor: Color.fromARGB(255, 115, 211, 24),
                              style: TextStyle(
                                  decorationColor: Colors.grey,
                                  color: Colors.black),
                            ),
                            children: [
                              ListTile(
                                title: Text(
                                  'Products list',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                tileColor: Color.fromARGB(255, 146, 25, 27),
                              ),
                              ListTile(
                                title: Text(
                                  'Product Specification',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                tileColor: Color.fromARGB(255, 146, 25, 27),
                              ),
                              ListTile(
                                title: Text(
                                  'Product Price',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                tileColor: Color.fromARGB(255, 146, 25, 27),
                              ),
                              ListTile(
                                title: Text(
                                  'Product Rates',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                tileColor: Color.fromARGB(255, 146, 25, 27),
                              ),
                              ListTile(
                                title: Text(
                                  'Product Shipping Rates',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                tileColor: Color.fromARGB(255, 146, 25, 27),
                              ),
                              ListTile(
                                title: Text(
                                  'Product Tax Rates',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                tileColor: Color.fromARGB(255, 146, 25, 27),
                              ),
                              ListTile(
                                title: Text(
                                  'Product Duties',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                tileColor: Color.fromARGB(255, 146, 25, 27),
                              ),
                              ListTile(
                                title: Text(
                                  'Product Discounts',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                tileColor: Color.fromARGB(255, 146, 25, 27),
                              ),
                              ListTile(
                                title: Text(
                                  'Product Offers',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                tileColor: Color.fromARGB(255, 146, 25, 27),
                              ),
                            ],
                          ),
                          const ExpansionTile(
                              title: Text(
                                'Manufacturer',
                                selectionColor: Colors.grey,
                                style: TextStyle(
                                    decorationColor: Colors.grey,
                                    color: Colors.black),
                              ),
                              children: [
                                ListTile(
                                  title: Text(
                                    'Manufacture list',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 93, 102, 121),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Branch Details',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Contact Details',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Bank Details',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                              ]),
                          const ExpansionTile(
                              title: Text(
                                'Logistics',
                                selectionColor: Colors.grey,
                              ),
                              children: [
                                ListTile(
                                  title: Text(
                                    'Logistics Shipping Agent',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Shipping Agent',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Agent Bank Detail',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                              ]),
                          const ExpansionTile(
                              title: Text(
                                'Transactions',
                                selectionColor: Colors.grey,
                                style: TextStyle(
                                    decorationColor: Colors.grey,
                                    color: Colors.black),
                              ),
                              children: [
                                ListTile(
                                  title: Text(
                                    'Purchase Reader',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Purchase Return',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Payments',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Sales Order Return',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Sales Return',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Invoice',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                              ]),
                          const ExpansionTile(
                              title: Text(
                                'Vendors',
                                selectionColor: Colors.grey,
                                style: TextStyle(
                                    decorationColor: Colors.grey,
                                    color: Colors.black),
                              ),
                              children: [
                                ListTile(
                                  title: Text(
                                    'Vendors List',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Branch Detail',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Contact Detail',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Bank Detail',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                              ]),
                          const ExpansionTile(
                              title: Text(
                                'customers',
                                selectionColor: Colors.grey,
                                style: TextStyle(
                                    decorationColor: Colors.grey,
                                    color: Colors.black),
                              ),
                              children: [
                                ListTile(
                                  title: Text(
                                    'Customers List',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Branch Detail',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Contact Detail',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Bank Detail',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                              ]),
                          const ExpansionTile(
                              title: Text(
                                'others',
                                selectionColor: Colors.grey,
                                style: TextStyle(
                                    decorationColor: Colors.grey,
                                    color: Colors.black),
                              ),
                              children: [
                                ListTile(
                                  title: Text(
                                    'Country',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                                ListTile(
                                  title: Text(
                                    'Exchange Rate API',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                  tileColor: Color.fromARGB(255, 146, 25, 27),
                                ),
                              ]),
                        ]),
                    const ListTile(
                      title: Text('Orders'),
                      leading: Icon(Icons.gif_box),
                    ),
                    const ListTile(
                      title: Text('Suppliers'),
                      leading: Icon(Icons.verified_user_rounded),
                    ),
                    const ListTile(
                      title: Text('Payments'),
                      leading: Icon(Icons.payments),
                    ),
                    const ListTile(
                      title: Text('Reports'),
                      leading: Icon(Icons.report),
                    ),
                    const ListTile(
                      title: Text('Settings'),
                      leading: Icon(Icons.settings),
                    ),
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
