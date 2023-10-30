import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:qr_code_scanner/qr_code_scanner.dart';

///QR view on the ScanTagsScreen
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? qrviewcontroller;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      qrviewcontroller!.pauseCamera();
    } else if (Platform.isIOS) {
      qrviewcontroller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'SCAN QR',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
              Text(
                'Please Camera Close to QR code located on the Inventroy Product tag',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ]),
            SizedBox(
              height: 70,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 300,
                width: 300,
                child: Center(
                  child: QRView(
                    key: qrKey,
                    onQRViewCreated: _onQRViewCreated,
                    overlay: QrScannerOverlayShape(
                      borderColor: Color.fromARGB(255, 8, 238, 77),
                      //overlayColor: Color.fromARGB(255, 118, 193, 158),
                      borderRadius: 10,
                      borderLength: 35,
                      borderWidth: 10,

                      // cutOutHeight: 20,
                      //cutOutBottomOffset: 20,
                      cutOutSize: 350,
                    ),
                  ),
                ),
              ),
            ]),
            SizedBox(height: 50),
            SizedBox(
              child: Center(
                child: (result != null)
                    ? Text(
                        'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
                    : Text('Scan a code'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Toggle the flash
                if (qrviewcontroller != null) {
                  qrviewcontroller?.toggleFlash();
                }
              },
              child: Icon(Icons.flash_on),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.qrviewcontroller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        //  controller.toggleFlash();
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    qrviewcontroller?.dispose();
    super.dispose();
  }
}
