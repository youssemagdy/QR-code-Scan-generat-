import 'package:flutter/material.dart';
import 'package:qr_scan_generate/widget/generate_qr.dart';
import 'package:qr_scan_generate/widget/scan_qr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "QR Code Scanner and Generated",
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                setState(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ScanQrCode()
                    )
                  );
                });
              },
              child: Text(
                'Scan QR Code',
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => GenerateQr(),
                    )
                  );
                });
              },
              child: Text(
                'Generated QR Code',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
