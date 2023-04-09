import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login_page extends StatefulWidget {
  login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Container(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
