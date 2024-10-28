import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF006039),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50.h),
            Center(
              child: CircleAvatar(
                  radius: 80.r,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/splash.png",
                    width: 155.w,
                    height: 155.h,
                  )),
            ),
            Padding(
              padding:  EdgeInsets.all(16.sp),
              child: Text(
                'sample Text....................................................................................',
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    height: 0.h,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
