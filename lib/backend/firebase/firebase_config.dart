import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDb6WiTY1OChGIs7jpLY3cJo72tvx5PKQE",
            authDomain: "mhs-app-a1568.firebaseapp.com",
            projectId: "mhs-app-a1568",
            storageBucket: "mhs-app-a1568.appspot.com",
            messagingSenderId: "1000534795732",
            appId: "1:1000534795732:web:35e1573cdead139bd26241",
            measurementId: "G-XFTBLLN212"));
  } else {
    await Firebase.initializeApp();
  }
}
