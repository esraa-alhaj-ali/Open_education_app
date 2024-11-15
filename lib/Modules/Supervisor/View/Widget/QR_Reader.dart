
import 'package:flutter/material.dart';
import 'package:open_Education/constant/appColors.dart';

import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:sizer/sizer.dart';
class CustomQRView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Custom_QRViewState();
}

class Custom_QRViewState extends State<CustomQRView> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String qrText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: QRView(overlay: QrScannerOverlayShape(
              borderColor: AppColors.purple,
              borderRadius: 4.w,
              borderLength: 40,
              borderWidth: 10,
              cutOutSize: 80.w
            
            ),
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
                        )
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text('Scan result: $qrText'),
            ),
          )
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        qrText = scanData.code!;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}