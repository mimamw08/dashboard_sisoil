import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home_page extends StatefulWidget {
  home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 74,
            width: 1920,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RichText(
                    text: TextSpan(
                        text: 'LOGO',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))),
                RichText(
                    text: TextSpan(
                        text: 'DASHBOARD',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold))),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/blank_picture.jpg'),
                  radius: 35,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
