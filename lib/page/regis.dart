import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class regis_page extends StatefulWidget {
  regis_page({Key? key}) : super(key: key);

  @override
  State<regis_page> createState() => _regis_pageState();
}

class _regis_pageState extends State<regis_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 450,
                width: 700,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 400,
                      width: 400,
                      child: Image.asset('asset/images/gambar_tanaman.png'),
                    ),
                    Container(
                      height: 400,
                      width: 250,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Belum punya akun?'),
                          Text(
                              'segera download aplikasi Si-Soil di Play Store'),
                          Container(
                            height: 100,
                            width: 100,
                            child: GestureDetector(
                              onTap: () async {
                                await openUrl(
                                    'https://play.google.com/store/apps/details?id=com.agrisoil.nkpapp');
                              },
                              child: Image.asset('asset/images/playstore.png'),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> openUrl(String url,
      {bool forceWebView = false, bool enableJavaScript = false}) async {
    await launch(url);
  }
}
