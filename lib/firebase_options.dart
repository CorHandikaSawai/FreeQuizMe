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
    apiKey: 'AIzaSyBwxT0iuCFzbnIWUilbqZAAWJNUJi6LAmY',
    appId: '1:485260124051:web:de1a20a348f71b7b42d266',
    messagingSenderId: '485260124051',
    projectId: 'qcards-2856a',
    authDomain: 'qcards-2856a.firebaseapp.com',
    storageBucket: 'qcards-2856a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPFcXq1kH2XBnMp_n0TYwcLucV6WSqkmQ',
    appId: '1:485260124051:android:d08d27a99de55f7542d266',
    messagingSenderId: '485260124051',
    projectId: 'qcards-2856a',
    storageBucket: 'qcards-2856a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWYYwgt2GjX1hKAg1Z7zY1-RkJ9wOM0uc',
    appId: '1:485260124051:ios:ffe12c9136441dd642d266',
    messagingSenderId: '485260124051',
    projectId: 'qcards-2856a',
    storageBucket: 'qcards-2856a.appspot.com',
    iosClientId:
        '485260124051-gqmnrl3epe3von4t54aoo70ecrfbb6sm.apps.googleusercontent.com',
    iosBundleId: 'com.arcsos.qcards',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBWYYwgt2GjX1hKAg1Z7zY1-RkJ9wOM0uc',
    appId: '1:485260124051:ios:ffe12c9136441dd642d266',
    messagingSenderId: '485260124051',
    projectId: 'qcards-2856a',
    storageBucket: 'qcards-2856a.appspot.com',
    iosClientId:
        '485260124051-gqmnrl3epe3von4t54aoo70ecrfbb6sm.apps.googleusercontent.com',
    iosBundleId: 'com.arcsos.qcards',
  );
}
