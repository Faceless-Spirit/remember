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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDeO4qOuUr-689SN0y0_Uj85kyvPTniFEY',
    appId: '1:826544374112:web:a79a73ac6f2d044625de05',
    messagingSenderId: '826544374112',
    projectId: 'remember-17fc2',
    authDomain: 'remember-17fc2.firebaseapp.com',
    storageBucket: 'remember-17fc2.appspot.com',
    measurementId: 'G-N8R0EJ1XMF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBtRLuj1tclv_aZKDI_aHhOFYdNkXudKmI',
    appId: '1:826544374112:android:31c2f557e0ad7e2d25de05',
    messagingSenderId: '826544374112',
    projectId: 'remember-17fc2',
    storageBucket: 'remember-17fc2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBKQV478Fotmi3AR9Z7zpFTs58d_uU_-jA',
    appId: '1:826544374112:ios:119df07ad021e18125de05',
    messagingSenderId: '826544374112',
    projectId: 'remember-17fc2',
    storageBucket: 'remember-17fc2.appspot.com',
    iosBundleId: 'com.example.remember',
  );
}
