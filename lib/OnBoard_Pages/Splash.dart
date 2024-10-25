import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klawapplication/OnBoard_Pages/Onboard.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {

    Future.delayed(Duration(seconds: 3), () {

      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => Onboard(
      )));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          width: 155.w,
          height: 155.h,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage("assets/splash.png"),
              fit: BoxFit.fill,
            ),
            shape: OvalBorder(),
          ),
        ),
      ),
    );
  }
}
