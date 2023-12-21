import 'package:todoapp/views/HomeView/HomeView.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      //for web
      options: const FirebaseOptions(
        apiKey: "AIzaSyDVDnl_lKMx5pTt9DkdcSClar8WVb6VvYA",
        authDomain: "todoapp-13cd4.firebaseapp.com",
        projectId: "todoapp-13cd4",
        storageBucket: "todoapp-13cd4.appspot.com",
        messagingSenderId: "668144572107",
        appId: "1:668144572107:web:3def3e127c4d3614ff2d4e",
      ),
    );
  } else {
    //for android
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
