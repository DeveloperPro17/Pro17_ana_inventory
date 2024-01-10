import 'package:application/screens/BottomBar.dart';
import 'package:application/menubar_items/inventroy/c72/c72add.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class c72 extends StatefulWidget {
  @override
  State<c72> createState() => c72State();
}

class c72State extends State<c72> {
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
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          child: Column(children: [
            Container(
              //  height: MediaQuery.sizeOf(context).height - 50,
              color: const Color.fromARGB(255, 157, 189, 218),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Inventory / c72',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => c72add()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(140.0, 40.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Adjust radius here
                              ),
                              padding: const EdgeInsets.all(
                                  10) // Adjust padding here
                              ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Add product',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(Icons.add)
                            ],
                          )),
                    ],
                  ),
                ),
              ]),
              //  scroll
            ),
            Column(children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: 40,
                  columns: const [
                    DataColumn(label: Text('Serial No')),
                    DataColumn(label: Text('Model No')),
                    DataColumn(label: Text('MAC Address')),
                    DataColumn(label: Text('MFD Date')),
                    DataColumn(label: Text('Order Date')),
                    DataColumn(label: Text('Received Date')),
                    DataColumn(label: Text('Sold To')),
                    DataColumn(label: Text('Sale date')),
                  ],
                  rows: [
                    DataRow(
                        color: MaterialStateColor.resolveWith(
                          (states) => Colors.grey
                              .shade300, // Background color for this DataRow
                        ),
                        cells: const [
                          DataCell(Text('HR600A231200014')),
                          DataCell(Text('0123')),
                          DataCell(Text('CD:67:D5:38: BE: F6')),
                          DataCell(Text('null')),
                          DataCell(Text('null')),
                          DataCell(Text('herdx')),
                          DataCell(Text('521')),
                          DataCell(
                            Text('Details'),
                          ),
                        ]),

                    const DataRow(cells: [
                      DataCell(Text('01')),
                      DataCell(Text('0123')),
                      DataCell(Text('Reader')),
                      DataCell(Text('4567')),
                      DataCell(Text('05')),
                      DataCell(Text('567')),
                      DataCell(Text('521')),
                      DataCell(Text('Details')),
                    ]),
                    DataRow(
                        color: MaterialStateColor.resolveWith(
                          (states) => Colors.grey
                              .shade300, // Background color for this DataRow
                        ),
                        cells: const [
                          DataCell(Text('01')),
                          DataCell(Text('0123')),
                          DataCell(Text('Reader')),
                          DataCell(Text('4567')),
                          DataCell(Text('05')),
                          DataCell(Text('567')),
                          DataCell(Text('521')),
                          DataCell(Text('Details')),
                        ]),
                    const DataRow(cells: [
                      DataCell(Text('01')),
                      DataCell(Text('0123')),
                      DataCell(Text('Reader')),
                      DataCell(Text('4567')),
                      DataCell(Text('05')),
                      DataCell(Text('567')),
                      DataCell(Text('521')),
                      DataCell(Text('Details')),
                    ]),
                    DataRow(
                        color: MaterialStateColor.resolveWith(
                          (states) => Colors.grey
                              .shade300, // Background color for this DataRow
                        ),
                        cells: const [
                          DataCell(Text('01')),
                          DataCell(Text('0123')),
                          DataCell(Text('Reader')),
                          DataCell(Text('4567')),
                          DataCell(Text('05')),
                          DataCell(Text('567')),
                          DataCell(Text('521')),
                          DataCell(Text('Details')),
                        ]),

                    // Add more rows as needed
                  ],
                ),
              ),
            ]),
          ]),
        ),
      )),
      bottomNavigationBar: BottomBar(),
    );
  }
}
