import 'dart:async';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:spaceflight_app/screens/home_screen.dart';


class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.network(
                "https://assets10.lottiefiles.com/packages/lf20_R6y0Xw.json",
                animate: true),
          ],
        ),
      ),
    );
  }
}
