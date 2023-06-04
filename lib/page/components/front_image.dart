import 'package:dashboard_sisoil/page/about_us.dart';
import 'package:dashboard_sisoil/page/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class front_image extends StatefulWidget {
  front_image({Key? key}) : super(key: key);

  @override
  State<front_image> createState() => _front_imageState();
}

class _front_imageState extends State<front_image> {
  late ScrollController _scrollController;
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  @override
  void initState() {
    // initialize scroll controllers
    _scrollController = ScrollController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebSmoothScroll(
          controller: _scrollController,
          child: SingleChildScrollView(
              controller: _scrollController,
              physics: const NeverScrollableScrollPhysics(),
              child: Scrollbar(
                  isAlwaysShown: _isAlwaysShown,
                  showTrackOnHover: _showTrackOnHover,
                  hoverThickness: 30.0,
                  child: _widget()))),
    );
  }

  Widget _widget() => Column(
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "asset/images/gambar.png",
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Logo',
                      style: GoogleFonts.poppins(
                        color: Colors.green,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                  Text('Si-Soil',
                      style: GoogleFonts.poppins(
                        color: Colors.green,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => login_page()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.green,
                            elevation: 0,
                            side: const BorderSide(
                                width: 2.0, color: Colors.green)),
                        child: Text('Login')),
                  ),
                ],
              ),
              Column(
                children: [Text('data')],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 700,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Text(
                          'Fitur Utama Kita',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 500,
                                ),
                                Image.asset('asset/images/pengukuran.png'),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Our device will track the soil health, which includes the nitrogen, phosphorus, and potassium that are needed by plants.",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "It will also  know the pH and moist of it. The data will be saved and can be seen as history.",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 500,
                                ),
                                Image.asset('asset/images/kalkulator.png'),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "We provide two types of calculators, fertilizer PPM calculator and NPK and N-P205-K20.",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "converter to help your gardening activity.",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 500,
                                ),
                                Image.asset('asset/images/prediksi.png'),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "We have gathered data and used machine learning to predict the soil content. By this, we can tell you whether your plants",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "need more fertilizer to keep them healthy or they’re doing fine for the next seven days!.",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.green),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Logo'),
                      GestureDetector(
                        onTap: () async {
                          await openUrl(
                              'https://play.google.com/store/apps/details?id=com.agrisoil.nkpapp');
                        },
                        child: Text(
                          'Check Our App',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => abput_us()));
                        },
                        child: Text(
                          'About Us',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('asset/images/lpdp.png'),
                  )
                ],
              ),
            ),
          )
        ],
      );
  Future<void> openUrl(String url,
      {bool forceWebView = false, bool enableJavaScript = false}) async {
    await launch(url);
  }
}
