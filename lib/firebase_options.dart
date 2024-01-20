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
    apiKey: 'AIzaSyBcoOcenHPmW76iaeiDodUFSPz-CCnkFig',
    appId: '1:82856456041:web:81be49fe9f96d346ccd7f8',
    messagingSenderId: '82856456041',
    projectId: 'comida-99f17',
    authDomain: 'comida-99f17.firebaseapp.com',
    storageBucket: 'comida-99f17.appspot.com',
    measurementId: 'G-TQHX0VG5B6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDAMHeQHC5qDzMIgYH-jQwI2gSIdPXHh8A',
    appId: '1:82856456041:android:86f0293e76773d20ccd7f8',
    messagingSenderId: '82856456041',
    projectId: 'comida-99f17',
    storageBucket: 'comida-99f17.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyABi4AK455RpFY1ODAMr4r-lbxwm4LEHEg',
    appId: '1:82856456041:ios:61cff22886a8ef98ccd7f8',
    messagingSenderId: '82856456041',
    projectId: 'comida-99f17',
    storageBucket: 'comida-99f17.appspot.com',
    iosBundleId: 'com.example.comida',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyABi4AK455RpFY1ODAMr4r-lbxwm4LEHEg',
    appId: '1:82856456041:ios:45695a32b6782641ccd7f8',
    messagingSenderId: '82856456041',
    projectId: 'comida-99f17',
    storageBucket: 'comida-99f17.appspot.com',
    iosBundleId: 'com.example.comida.RunnerTests',
  );
}
