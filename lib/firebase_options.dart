// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyDJMc3WQYqrbevGZ6cKS7e9PTdJoy0jDT0',
    appId: '1:1094978539024:web:a25b0d221129e4de58c495',
    messagingSenderId: '1094978539024',
    projectId: 'gariwala-57c04',
    authDomain: 'gariwala-57c04.firebaseapp.com',
    storageBucket: 'gariwala-57c04.firebasestorage.app',
    measurementId: 'G-1REJTB66JP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC4vCAY6ARIZgKWgLscGIASJIwVQ_9XwEw',
    appId: '1:1094978539024:android:1c8c23e4c8ae33ed58c495',
    messagingSenderId: '1094978539024',
    projectId: 'gariwala-57c04',
    storageBucket: 'gariwala-57c04.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB-a41Qy-pXj8DFnm0IJaR-hR66pocrM4g',
    appId: '1:1094978539024:ios:5da19bee65d1db2358c495',
    messagingSenderId: '1094978539024',
    projectId: 'gariwala-57c04',
    storageBucket: 'gariwala-57c04.firebasestorage.app',
    iosBundleId: 'com.gariwala.gariwala',
  );
}
