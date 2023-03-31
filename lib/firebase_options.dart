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
    apiKey: 'AIzaSyDQAFpg_a84LTw1TaDn5uji5c4H83vOVBA',
    appId: '1:659616675679:web:9f26e39b89a46eaf46a8ea',
    messagingSenderId: '659616675679',
    projectId: 'qcards-d4f31',
    authDomain: 'qcards-d4f31.firebaseapp.com',
    storageBucket: 'qcards-d4f31.appspot.com',
    measurementId: 'G-Z2GZ0S8CBS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDmhp8F6j5BoPTwEGZvbjy99ki4WZK5KUs',
    appId: '1:659616675679:android:ace0168f2a3930d346a8ea',
    messagingSenderId: '659616675679',
    projectId: 'qcards-d4f31',
    storageBucket: 'qcards-d4f31.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAVF87ZFgdRiG9WEFvtcFtthinFkyMLA2g',
    appId: '1:659616675679:ios:447b8f56fddb65fa46a8ea',
    messagingSenderId: '659616675679',
    projectId: 'qcards-d4f31',
    storageBucket: 'qcards-d4f31.appspot.com',
    iosClientId: '659616675679-6c3f7aepp16tadbguf3lu5ptnjaf076o.apps.googleusercontent.com',
    iosBundleId: 'com.example.qcards',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAVF87ZFgdRiG9WEFvtcFtthinFkyMLA2g',
    appId: '1:659616675679:ios:447b8f56fddb65fa46a8ea',
    messagingSenderId: '659616675679',
    projectId: 'qcards-d4f31',
    storageBucket: 'qcards-d4f31.appspot.com',
    iosClientId: '659616675679-6c3f7aepp16tadbguf3lu5ptnjaf076o.apps.googleusercontent.com',
    iosBundleId: 'com.example.qcards',
  );
}
