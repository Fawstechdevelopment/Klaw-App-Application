import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ForgotOtpVerification.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Makes Scaffold adjust for the keyboard
      backgroundColor: const Color(0xFF006039),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 180.h), // Adjust top spacing as needed
            Center(
              child: Stack(
                children: [
                  SizedBox(width: 155.w,
                    height: 215.h,
                    child: Image.asset("assets/splash.png",  width: 155.w,
                      height: 155.h,),
                  ),
                  Positioned(left: 18.w,top: 150.h,
                    child: Text(
                      'KLAW',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: const Color(0xFF00C677),
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.h),
            Container(
              width: 412.w,
              height: 473.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(43.r),
                    topLeft: Radius.circular(43.r),
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 27.w, top: 35.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ENTER YOUR MOBILE NUMBER',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: const Color(0xFF006039),
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          height: 0.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 248.w,
                      child: Opacity(
                        opacity: 0.80,
                        child: Text(
                          'A code will be sent to your number.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              height: 0.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25.h),
                    SizedBox(
                      width: 86.w,
                      child: Text(
                        'Phone no.*',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: const Color(0xFF737373),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            height: 0.h,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 70.w,
                          height: 48.h,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: '91',
                              hintStyle: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.w, color: const Color(0xFFD9D9D9)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.w, color: const Color(0xFFD9D9D9)),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        SizedBox(
                          width: 246.w,
                          height: 48.h,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: '123456789',
                              hintStyle: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.w, color: const Color(0xFFD9D9D9)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.w, color: const Color(0xFFD9D9D9)),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h),
                    GestureDetector(onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Forgototpverification()));},
                      child: Center(
                        child: Container(
                          width: 100.w,
                          height: 48.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF006039),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1.w, color: const Color(0xFFD9D9D9)),
                              borderRadius: BorderRadius.circular(7.r),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'GET OTP',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  height: 0.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
