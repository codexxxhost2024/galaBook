import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDtKppb397_5FkA_t_Z5Bv7mu5Nd3ksF2s",
            authDomain: "apartment-rental-free-p-4x20iq.firebaseapp.com",
            projectId: "apartment-rental-free-p-4x20iq",
            storageBucket: "apartment-rental-free-p-4x20iq.firebasestorage.app",
            messagingSenderId: "753390051378",
            appId: "1:753390051378:web:f26a4e122f30fce51c9c2b"));
  } else {
    await Firebase.initializeApp();
  }
}
