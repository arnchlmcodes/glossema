import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDt0dyRAqjgNfGO6Qcu4w-ncFU62fShGA4",
            authDomain: "sample-xj8h2v.firebaseapp.com",
            projectId: "sample-xj8h2v",
            storageBucket: "sample-xj8h2v.appspot.com",
            messagingSenderId: "1054022033768",
            appId: "1:1054022033768:web:544dee6ebccd6ebafef6dd"));
  } else {
    await Firebase.initializeApp();
  }
}
