import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignUpDetails.dart';

class SignUpOtpverify extends StatefulWidget {
  const SignUpOtpverify({super.key});

  @override
  State<SignUpOtpverify> createState() => _SignUpOtpverifyState();
}

class _SignUpOtpverifyState extends State<SignUpOtpverify> {
  static const int initialCountdown = 300; // 5 minutes in seconds (5 * 60)
  int remainingTime = initialCountdown;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainingTime > 0) {
        setState(() {
          remainingTime--;
        });
      } else {
        timer.cancel();
        // You can add any action you want to trigger when the countdown finishes.
      }
    });
  }

  String formatTime(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return "$minutes:$secs";
  }

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
            SizedBox(height: 150.h), // Adjust top spacing as needed
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
            SizedBox(height: 80.h),
            Container(
              width: 412.w,
              height: 472.h,
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Verification',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color(0xFF006039),
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w700,
                          height: 0.h,
                        ),
                      ),
                    ),
                    Text(
                      'Enter the code from the sms\nwe sent you',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300,
                          height: 0.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(formatTime(remainingTime)),
                    SizedBox(height: 30.h),
                    OtpTextField(
                      fieldHeight: 45.h,
                      numberOfFields: 6,
                      borderColor: Color(0xFF512DA8),
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Verification Code"),
                                content:
                                    Text('Code entered is $verificationCode'),
                              );
                            });
                      }, // end onSubmit
                    ),
                    SizedBox(height: 40.h),
                    GestureDetector(onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Signupdetails() ));},
                      child: Container(
                        width: 328.w,
                        height: 48.h,
                        decoration: ShapeDecoration(
                          color: Color(0xFF006039),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r)),
                        ),
                        child: SizedBox(
                          width: 90.w,
                          height: 14.h,
                          child: Center(
                            child: Text(
                              'Submit',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.h,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'I didn’t receive the code! ',
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: 'Resend',
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    )
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
