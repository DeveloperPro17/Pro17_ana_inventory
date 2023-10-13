import 'package:application/BottomBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

//import 'package:qr_code_scanner/qr_code_scanner.dart';

class qrcode extends StatefulWidget {
  const qrcode({super.key});

  @override
  State<qrcode> createState() => _qrcodeState();
}

class _qrcodeState extends State<qrcode> {
  // QRViewController? _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 79, 79, 79),
      appBar: AppBar(
        elevation: 0,
        shadowColor: const Color.fromARGB(255, 79, 79, 79),
        backgroundColor: const Color.fromARGB(255, 79, 79, 79),
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/images/Arrow 3.svg',

            //  color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            const SizedBox(height: 10),
            Container(
              child: const Text(
                'Scan Bar Code',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 70,
                width: MediaQuery.of(context).size.width / 1.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/Rectangle 31.png'),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Add as a new product',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Reader Monitor',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/images/Group 193.svg',
                      height: 40,
                      width: 50,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  // void _onQRViewCreated(QRViewController controller) {
  //   setState(() {
  //   //  _controller = controller;
  //   });
  //   controller.scannedDataStream.listen((scanData) {
  //     print('Scanned Data: $scanData');
  //     // Handle the scanned data here
  //   });
  // }

  @override
  void dispose() {
    // _controller?.dispose();
    super.dispose();
  }
}
