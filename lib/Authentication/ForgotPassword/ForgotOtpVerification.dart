import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'NewPassword.dart';

class Forgototpverification extends StatefulWidget {
  const Forgototpverification({super.key});

  @override
  State<Forgototpverification> createState() => _ForgototpverificationState();
}

class _ForgototpverificationState extends State<Forgototpverification> {
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
              child: Container(
                width: 155.w,
                height: 155.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  image: const DecorationImage(
                    image: AssetImage("assets/splash.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              'KLAW',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: const Color(0xFF00C677),
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w700,
                ),
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
                    Text('5.00'),
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
                    GestureDetector(onTap: (){ Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_)=>Newpassword() ),(route)=>false);},
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
