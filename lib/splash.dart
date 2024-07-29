
import 'package:exsam2/onbording.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
    void initState() {
    super.initState();
    goToNextPage();
  }

  goToNextPage() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Onbording()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xff53B175),
     body: Center(
      child: Image.asset("images/Group 1 (2).png"),
     ),
    );
  }
}