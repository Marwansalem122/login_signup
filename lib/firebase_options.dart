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
    apiKey: 'AIzaSyBMhLt0rLNj3jsaYfQmq1ueq-BRbzD0pzY',
    appId: '1:50654045401:web:41166a8b9d9d0455408ac8',
    messagingSenderId: '50654045401',
    projectId: 'login-signup-getx',
    authDomain: 'login-signup-getx.firebaseapp.com',
    storageBucket: 'login-signup-getx.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9XSupIJmklL4w3NwUi5Vg1EGrDW4D0_c',
    appId: '1:50654045401:android:c6b62dfdbf30640a408ac8',
    messagingSenderId: '50654045401',
    projectId: 'login-signup-getx',
    storageBucket: 'login-signup-getx.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAbZX4QslIlJnGjVOK68PQzkOJVSMmG0aQ',
    appId: '1:50654045401:ios:1b6bc3307f4769cd408ac8',
    messagingSenderId: '50654045401',
    projectId: 'login-signup-getx',
    storageBucket: 'login-signup-getx.appspot.com',
    iosClientId: '50654045401-d6s2iboscv3dp52a3dmr3drt3difor1u.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginSignup',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAbZX4QslIlJnGjVOK68PQzkOJVSMmG0aQ',
    appId: '1:50654045401:ios:f95cea3b7b882542408ac8',
    messagingSenderId: '50654045401',
    projectId: 'login-signup-getx',
    storageBucket: 'login-signup-getx.appspot.com',
    iosClientId: '50654045401-a8quebqstel99dbrcedtti4cv0qrmrcn.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginSignup.RunnerTests',
  );
}