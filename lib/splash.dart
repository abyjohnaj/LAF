import 'package:flutter/material.dart';
import 'package:lost_and_found/home.dart';
import 'package:lost_and_found/login.dart';

class Splash extends StatefulWidget {
  final String userName; // Accept username

  const Splash({Key? key, required this.userName}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Login(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/LAS.png', // Replace with your image path
              width: 150, // Adjust size as needed
              height: 150,
            ),
            const SizedBox(height: 20), // Adds spacing
            const Text(
              'We Find it for You',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
