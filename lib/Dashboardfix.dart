import 'package:application/BottomBar.dart';
import 'package:application/insightcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:percent_indicator/percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Dashboardfix extends StatefulWidget {
  const Dashboardfix({super.key});

  @override
  State<Dashboardfix> createState() => _DashboardfixState();
}

Widget buildchart() {
  return SfCartesianChart(
    primaryXAxis: CategoryAxis(),
    series: <ChartSeries>[
      SplineSeries<SalesData, String>(
        dataSource: <SalesData>[
          SalesData('Jan', 0, 20),
          SalesData('Feb', 10, 640),
          SalesData('Mar', 20, 160),
          SalesData('Apr', 30, 380),
          SalesData('May', 40, 422),
          SalesData('jun', 50, 520),
          SalesData('jul', 260, 540),
          SalesData('aug', 70, 660),
          SalesData('sep', 28, 780),
          SalesData('oct', 280, 800),
          SalesData('nov', 280, 920),
          SalesData('dec', 280, 240),
        ],
        xValueMapper: (SalesData sales, _) => sales.year,
        yValueMapper: (SalesData sales, _) => sales.sales1,
        color: const Color.fromARGB(255, 52, 181, 58),
      ),
      LineSeries<SalesData, String>(
        dataSource: <SalesData>[
          SalesData('Jan', 20, 15),
          SalesData('Feb', 15, 100),
          SalesData('Mar', 25, 180),
          SalesData('Apr', 18, 213),
          SalesData('May', 28, 232),
          SalesData('jun', 28, 322),
          SalesData('jul', 28, 422),
          SalesData('aug', 28, 922),
          SalesData('sep', 28, 522),
          SalesData('oct', 28, 622),
          SalesData('nov', 28, 822),
          SalesData('dec', 28, 922),
        ],
        xValueMapper: (SalesData sales, _) => sales.year,
        yValueMapper: (SalesData sales, _) => sales.sales2,
        color: const Color.fromARGB(255, 67, 57, 242),
      ),
    ],
  );
}

class SalesData {
  final String year;
  final double sales1;
  final double sales2;

  SalesData(this.year, this.sales1, this.sales2);
}

class _DashboardfixState extends State<Dashboardfix> {
  @override
  Widget build(BuildContext context) {
    // final double screenWidth = MediaQuery.of(context).size.width;
    // final double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          // padding:EdgeInsets.all(20),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  const SizedBox(height: 70),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => insightcard()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
                      child: const Icon(
                        Icons.menu,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    //  padding: EdgeInsets.symmetric(horizontal: 20),
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5)),
                    //  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        // labelText: 'Username',
                        filled: true,
                        fillColor: Colors.grey[200],
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(
                              10.0), // Add padding to the icon
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
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 17.0),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ]),
                const SizedBox(height: 17),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 60.0,
                        backgroundColor:
                            const Color.fromARGB(255, 226, 251, 215),
                        child: CircularPercentIndicator(
                          radius: 60.0,
                          lineWidth: 10.0,
                          backgroundColor:
                              const Color.fromARGB(255, 226, 251, 215),
                          center: new Text(
                            "67%",
                            style: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                          percent: 0.67,
                          progressColor: const Color.fromARGB(255, 52, 181, 58),
                        ),
                      ),
                      CircleAvatar(
                        radius: 60.0,
                        backgroundColor:
                            const Color.fromARGB(255, 218, 215, 254),
                        child: CircularPercentIndicator(
                          backgroundColor:
                              const Color.fromARGB(255, 218, 215, 254),
                          radius: 60.0,
                          lineWidth: 10.0,
                          center: new Text(
                            "46%",
                            style: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                          percent: 0.46,
                          progressColor: const Color.fromARGB(255, 67, 57, 242),
                        ),
                      )
                    ]),
                const SizedBox(height: 40),
                Container(
                  child: const Text(
                    'Stock Inventory',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(//mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromARGB(255, 52, 181, 58),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Stock'),
                      ]),
                      SizedBox(
                        width: 60,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Color.fromARGB(255, 67, 57, 242),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Sale')
                        ],
                      )
                    ]),
                Container(
                  height: 200,
                  child: buildchart(),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  const SizedBox(width: 45),
                  SvgPicture.asset(
                    'assets/images/Group 21 (1).svg', // Path to your SVG file in the assets folder
                    width: 15,
                    height: 10,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Sale',
                    style: TextStyle(
                        color: Color.fromARGB(150, 150, 150, 150),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 25),
                  SvgPicture.asset(
                    'assets/images/Group 21.svg',
                    width: 15,
                    height: 10,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Sale',
                    style: TextStyle(
                        color: Color.fromARGB(150, 150, 150, 150),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ]),
                const Padding(padding: EdgeInsets.fromLTRB(450, 0, 150, 0)),
                Card(
                  // elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Sales Orders',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                child: const Row(children: [
                                  Text(
                                    'See All',
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                      150,
                                      28,
                                      28,
                                      28,
                                    )),
                                  ),
                                  Icon(
                                    Icons.chevron_right_rounded,
                                    color: Color.fromARGB(
                                      150,
                                      28,
                                      28,
                                      28,
                                    ),
                                  ),
                                ]),
                              ),
                            ]),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text(
                            '26',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(9),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade500,
                                shape: BoxShape.circle,
                              ),
                              child: const Text(
                                '434',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Text('Order Request'),
                            const Icon(Icons.chevron_right_rounded)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
