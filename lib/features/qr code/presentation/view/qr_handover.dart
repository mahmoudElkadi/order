import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order/core/utils/app_style.dart';
import 'package:order/core/widgets/width_spacer.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRHandover extends StatefulWidget {
  const QRHandover({super.key});

  @override
  State<QRHandover> createState() => _QRHandoverState();
}

class _QRHandoverState extends State<QRHandover> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  List<String> scannedCode = [];
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 2,
            child: QRView(key: qrKey, onQRViewCreated: _onQRViewCreated)),
        Expanded(
            flex: 6,
            child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 15.0.w, vertical: 10.h),
                    child: Container(
                        padding: EdgeInsets.all(15.h),
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.w),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.qr_code_2_rounded),
                                WidthSpacer(10),
                                Text(
                                  scannedCode[index],
                                  style: appStyle(context, 20, Colors.black,
                                      FontWeight.w500),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.delete_forever,
                              color: Colors.red,
                              size: 25,
                            ),
                          ],
                        )),
                  );
                },
                itemCount: scannedCode.length))
      ],
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        scannedCode.add(scanData.code!);
        scannedCode = scannedCode
            .toSet()
            .toList(); // Convert to unique set and back to list
      });
    });
  }
}
