import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lost_and_found/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Get the currently logged-in user
  User? user = FirebaseAuth.instance.currentUser;
  String userName = user?.email ?? "Guest"; 

  runApp(MyApp(userName: userName));
}

class MyApp extends StatelessWidget {
  final String userName;

  const MyApp({Key? key, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash(userName: userName), 
    );
  }
}


