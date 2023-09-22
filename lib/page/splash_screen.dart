import 'package:dashboard_sisoil/constants/responsive.dart';
import 'package:dashboard_sisoil/service_auth/auth_sercive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class splash_screen extends StatefulWidget {
  splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  int splashtime = 3;
  @override
  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return authService().handleAuthState();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (!Responsive.isMobile(context))
            Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      child: Image.asset("asset/images/logo_sisoil.png"),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Supported by',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      child: Image.asset("asset/images/logo_lpdp.png"),
                    ),
                  ],
                )),
        ],
      )),
    );
  }
}
