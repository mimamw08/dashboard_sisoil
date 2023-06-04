import 'package:dashboard_sisoil/page/dash_board_screen.dart';
import 'package:dashboard_sisoil/page/login.dart';
import 'package:dashboard_sisoil/page/splash_screen.dart';
import 'package:dashboard_sisoil/page/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

class authService {
  handleAuthState() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return DashBoardScreen();
          } else {
            return welcome_page();
          }
        });
  }
}
