import 'package:flutter/material.dart';
import 'splash_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add any necessary initialization tasks here
    
    // Example: Delay for 3 seconds and navigate to the home screen
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, '/SwipeIntroApp');
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/spexp.png'),
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
    );
  }
}
