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
    apiKey: 'AIzaSyBlE8ETT85xl53a6MFpbLg9CQOewRfoYqc',
    appId: '1:1001973528220:web:235417fdb87ea450485f59',
    messagingSenderId: '1001973528220',
    projectId: 'test-2ad12',
    authDomain: 'test-2ad12.firebaseapp.com',
    storageBucket: 'test-2ad12.appspot.com',
    measurementId: 'G-EVS5GXL615',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBB33eg4Df8miiLCpKnAFrq-tm_X6Ub9XA',
    appId: '1:1001973528220:android:930abcab9c37e60b485f59',
    messagingSenderId: '1001973528220',
    projectId: 'test-2ad12',
    storageBucket: 'test-2ad12.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDZmLeoTW-X5UEBWrNKzne8vfQ7rjgOo2A',
    appId: '1:1001973528220:ios:041981c2c5a41408485f59',
    messagingSenderId: '1001973528220',
    projectId: 'test-2ad12',
    storageBucket: 'test-2ad12.appspot.com',
    iosBundleId: 'com.example.pjSe',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDZmLeoTW-X5UEBWrNKzne8vfQ7rjgOo2A',
    appId: '1:1001973528220:ios:3fc285500a299b2e485f59',
    messagingSenderId: '1001973528220',
    projectId: 'test-2ad12',
    storageBucket: 'test-2ad12.appspot.com',
    iosBundleId: 'com.example.pjSe.RunnerTests',
  );
}
