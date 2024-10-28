import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:klawapplication/ChatSubject/AddCourse.dart';

import '../Authentication/Login/Login.dart';
import '../Authentication/SignUp_Pages/SignUpNumberFeild.dart';


class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 155.w,
              height: 155.h,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/splash.png'),
                  fit: BoxFit.fill,
                ),
                shape: OvalBorder(),
              ),
            ),
          ),
          Text(
            'KLAW',textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
              color: Color(0xFF00603A),
              fontSize: 40.sp,
              fontWeight: FontWeight.w700,
            ),),
          ),  SizedBox(height: 60.h),
          SizedBox(
            width: 320.w,
            height: 60.h,
            child: Opacity(
              opacity: 0.90,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor.',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w300,
                ),),
              ),
            ),
          ),
          SizedBox(height: 175.h),
          GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=> SignupNumberFeild())); },
            child: Container(
              width: 343.w,
              height: 48.h,
              decoration: ShapeDecoration(
                color: Color(0xFF006039),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
              ),child: SizedBox(
              width: 173.95.w,
              height: 21.h,
              child: Center(
                child: Text(
                  'Sign up',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),),
              ),
            ),
            ),
          ),
          SizedBox(height: 15.h),
          GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Login())); },
            child: Container(
              width: 343.w,
              height: 48.h,
              decoration: ShapeDecoration(
                color: Color(0xFF04955A),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
              ),child:  SizedBox(
              width: 173.95.w,
              height: 21.h,
              child: Center(
                child: Text(
                  'Log in',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                          ),
              ),),
            ),
          ),
        ],
      )
    );
  }
}
