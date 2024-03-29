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
    apiKey: 'AIzaSyA5pD7CCDKITX2iWDEKsd_4oNntaoVz2iA',
    appId: '1:464221935281:web:cb173e9bd517178034b490',
    messagingSenderId: '464221935281',
    projectId: 'tailortrade-b1047',
    authDomain: 'tailortrade-b1047.firebaseapp.com',
    storageBucket: 'tailortrade-b1047.appspot.com',
    measurementId: 'G-F6XZY6JC7T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAdLLxGYnlOxSBJFgH-3NrcuIP3HAUuvcY',
    appId: '1:464221935281:android:f0fd35d634f0aec034b490',
    messagingSenderId: '464221935281',
    projectId: 'tailortrade-b1047',
    storageBucket: 'tailortrade-b1047.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBTeYqkdJVNBvjWtRgO-OGVWXGpVHuVELQ',
    appId: '1:464221935281:ios:dd3d093dc87827c934b490',
    messagingSenderId: '464221935281',
    projectId: 'tailortrade-b1047',
    storageBucket: 'tailortrade-b1047.appspot.com',
    iosBundleId: 'com.example.tailorTrade',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBTeYqkdJVNBvjWtRgO-OGVWXGpVHuVELQ',
    appId: '1:464221935281:ios:beeebe2e32c17a2d34b490',
    messagingSenderId: '464221935281',
    projectId: 'tailortrade-b1047',
    storageBucket: 'tailortrade-b1047.appspot.com',
    iosBundleId: 'com.example.tailorTrade.RunnerTests',
  );
}
