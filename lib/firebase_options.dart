// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBPJSflirYx6ZOB0VGl7D3yxxgcu9JBizI',
    appId: '1:479242760859:web:a64c2819c0fe42c5e7cc3e',
    messagingSenderId: '479242760859',
    projectId: 'dashboard-sisoil',
    authDomain: 'dashboard-sisoil.firebaseapp.com',
    storageBucket: 'dashboard-sisoil.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqfjSI_qPxoS8pw1GiuGVzRPj91ibbDx8',
    appId: '1:479242760859:android:23097b3c5aeb84fde7cc3e',
    messagingSenderId: '479242760859',
    projectId: 'dashboard-sisoil',
    storageBucket: 'dashboard-sisoil.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDi0UAojBvDQIb85MTB053SMMRvUOiCSvY',
    appId: '1:479242760859:ios:1c84fdb3dabb60d4e7cc3e',
    messagingSenderId: '479242760859',
    projectId: 'dashboard-sisoil',
    storageBucket: 'dashboard-sisoil.appspot.com',
    iosClientId: '479242760859-o4cdpa78a9tjikv73mta2j4p01dttp77.apps.googleusercontent.com',
    iosBundleId: 'com.example.dashboardSisoil',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDi0UAojBvDQIb85MTB053SMMRvUOiCSvY',
    appId: '1:479242760859:ios:1c84fdb3dabb60d4e7cc3e',
    messagingSenderId: '479242760859',
    projectId: 'dashboard-sisoil',
    storageBucket: 'dashboard-sisoil.appspot.com',
    iosClientId: '479242760859-o4cdpa78a9tjikv73mta2j4p01dttp77.apps.googleusercontent.com',
    iosBundleId: 'com.example.dashboardSisoil',
  );
}