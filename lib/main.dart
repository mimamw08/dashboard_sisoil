import 'package:dashboard_sisoil/controllers/controller.dart';
import 'package:dashboard_sisoil/page/login.dart';
import 'package:dashboard_sisoil/page/splash_screen.dart';
import 'package:dashboard_sisoil/page/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SI-Soil Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Controller(),
          )
        ],
        child: splash_screen(),
      ),
    );
  }
}
