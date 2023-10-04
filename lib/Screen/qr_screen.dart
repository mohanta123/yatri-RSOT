import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:flutter/material.dart';

class QRViewExample extends StatefulWidget {
  const QRViewExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  bool isFlashOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('QR Code Scanner'),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(Icons.qr_code),
      //       onPressed: () {
      //         // Open QR code scanner here
      //         _openQRScanner();
      //       },
      //     ),
      //   ],
      // ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          _buildQrView(context), // Add your QR code scanner here
          Positioned(
            bottom: 46, // Adjust this value to your preferred position
            child: IconButton(
              icon: Icon(
                isFlashOn ? Icons.flash_on : Icons.flash_off,
                color: isFlashOn ? Colors.yellow : Colors.grey,
                size: 30,
              ),
              onPressed: () {
                // Toggle flash here
                controller?.toggleFlash();
                setState(() {
                  isFlashOn = !isFlashOn;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: Colors.green,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: MediaQuery.of(context).size.width * 0.8,
      ),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      // Handle the scanned data here
      print('Scanned Data: $scanData');
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No Permission')),
      );
    }
  }

  void _openQRScanner() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => QRViewExample()),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
