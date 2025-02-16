import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBIsPZLGCWiufogPnFUyq0dwZ5OBR3QWuI",
            authDomain: "event-yw9eiy.firebaseapp.com",
            projectId: "event-yw9eiy",
            storageBucket: "event-yw9eiy.firebasestorage.app",
            messagingSenderId: "1000469494995",
            appId: "1:1000469494995:web:3f627759409ff2addfa826"));
  } else {
    await Firebase.initializeApp();
  }
}
