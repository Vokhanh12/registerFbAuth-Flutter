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
    apiKey: 'AIzaSyBM6tvvmDWpvzVFn29be2uRvhOOPM39Q0s',
    appId: '1:220272383049:web:7f77730fcc717c7d4c5b98',
    messagingSenderId: '220272383049',
    projectId: 'testmynotes-firebase',
    authDomain: 'testmynotes-firebase.firebaseapp.com',
    storageBucket: 'testmynotes-firebase.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASTQ7LNhEu5ZXeGGcFzK5AHlBT8SeDkUU',
    appId: '1:220272383049:android:c07456c3eb4d88ff4c5b98',
    messagingSenderId: '220272383049',
    projectId: 'testmynotes-firebase',
    storageBucket: 'testmynotes-firebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCOWvoE20F1UxZaRVrlbminsO_49UcKTSc',
    appId: '1:220272383049:ios:749470019dec7f494c5b98',
    messagingSenderId: '220272383049',
    projectId: 'testmynotes-firebase',
    storageBucket: 'testmynotes-firebase.appspot.com',
    iosClientId: '220272383049-ghvgd6a86uai2lofrb7ai123pcb32i9p.apps.googleusercontent.com',
    iosBundleId: 'se.mynotes.mynote',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCOWvoE20F1UxZaRVrlbminsO_49UcKTSc',
    appId: '1:220272383049:ios:9a68792153fa609f4c5b98',
    messagingSenderId: '220272383049',
    projectId: 'testmynotes-firebase',
    storageBucket: 'testmynotes-firebase.appspot.com',
    iosClientId: '220272383049-43tm3lld5lsnt8q5mgg1n9llma35novt.apps.googleusercontent.com',
    iosBundleId: 'se.mynotes.mynote.RunnerTests',
  );
}