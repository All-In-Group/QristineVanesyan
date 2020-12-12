import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:task6/page_for_buttons.dart';
import 'logger.dart';

class QrCodeScan extends StatefulWidget {
  @override
  _QrCodeScanState createState() => _QrCodeScanState();
}

class _QrCodeScanState extends State<QrCodeScan> {
  Logger log = getLogger("QrCodeScan");
  String result = "Waiting QR Scan Text";

  Future _scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      log.i(qrResult);
      setState(() {
        result = qrResult;
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = "Camera permission denied";
        });
      } else {
        setState(() {
          result = "Unkown error $ex";
        });
      }
    } on FormatException {
      setState(() {
        result = "You pressed the back button before scanning anything";
      });
    } catch (e) {
      setState(() {
        result = "Unkown error $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _scanQR,
        label: Text("Scan"),
        icon: Icon(Icons.camera_alt),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: Text("Qr Scan Code"),
      ),
      body: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
        RaisedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ButtonPage()));
          },
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(10.0),
            child:
            const Text('Go to button page', style: TextStyle(fontSize: 20)),
          ),
        ),
              Text(
        result,
        style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
        ),
      ),
            ],
          )),
    );
  }
}
