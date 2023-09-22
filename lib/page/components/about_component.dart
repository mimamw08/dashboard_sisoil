import 'package:dashboard_sisoil/page/about_us.dart';
import 'package:dashboard_sisoil/page/home.dart';
import 'package:dashboard_sisoil/page/login.dart';
import 'package:dashboard_sisoil/page/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class about_content extends StatefulWidget {
  about_content({Key? key}) : super(key: key);

  @override
  State<about_content> createState() => _about_contentState();
}

class _about_contentState extends State<about_content> {
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
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 90,
                    width: 100,
                    child: Image.asset('asset/images/new_logo.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => welcome_page()));
                    },
                    child: Text('SI SOIL',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
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
                            foregroundColor: Colors.white,
                            elevation: 0,
                            side: const BorderSide(
                                width: 2.0, color: Colors.white)),
                        child: Text('Login')),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 700,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "About Us",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam suscipit malesuada risus a egestas',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Donec facilisis tellus efficitur venenatis tempor. Morbi ullamcorper placerat tristique. Proin ornare enim quis',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'erat tempus, quis ornare ante commodo. Aenean a dignissim purus. Maecenas sit amet neque sagittis sem volutpat fringilla.',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Image.asset('asset/images/rumput.png')
                          ],
                        )
                      ],
                    ),
                  ))),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.green),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 90,
                        width: 80,
                        child: Image.asset('asset/images/new_logo.png'),
                      ),
                      GestureDetector(
                        onTap: () async {
                          await openUrl(
                              'https://play.google.com/store/apps/details?id=com.aplikasi.newagrisoil');
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
