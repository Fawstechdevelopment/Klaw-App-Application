import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:klawapplication/BottomNavigation.dart';
import 'package:klawapplication/Authentication/ForgotPassword/ForgotPassword.dart';
import '../SignUp_Pages/SignUpNumberFeild.dart';
import 'LoginOtp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Center(
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
            Center(
              child: Text(
                'KLAW',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Color(0xFF00603A),
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w700,
                    height: 0.h,
                  ),
                ),
              ),
            ),
            SizedBox(height: 28.h),
            Center(
              child: Text(
                'WELCOME BACK ',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Color(0xFF006039),
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            Center(
              child: Text(
                'Enter your email and password',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Color(0xFF006039),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 75.w, top: 62.h),
              child: SizedBox(
                width: 140.w,
                height: 26.h,
                child: Text(
                  'PHONE NUMBER',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                      height: 0.09.h,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 259.w,
                height: 80.h,
                child: TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: '9876543210',
                    hintStyle: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70.w),
              child: SizedBox(
                width: 100.w,
                height: 24.h,
                child: Text(
                  'Password',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                      height: 0.09.h,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 259.w,
                height: 80.h,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: '**************',
                    hintStyle: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Forgotpassword() ));},
              child: Padding(
                padding: EdgeInsets.only(right: 60.w),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 128.w,
                    height: 18.h,
                    child: Opacity(
                      opacity: 0.50.sp,
                      child: Text(
                        'ForgotPassword ?',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Color(0xFF006039),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            height: 0.09.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Bottomnavigation()));
              },
              child: Center(
                child: Container(
                  width: 165.w,
                  height: 42.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF006039),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r)),
                  ),
                  child: SizedBox(
                    width: 57.w,
                    height: 17.h,
                    child: Center(
                      child: Text(
                        'submit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Center(
              child: Text(
                'OR',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Color(0xFF006039),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            GestureDetector(onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => LoginOtp()));
            },
              child: Center(
                child: Container(
                  width: 165.w,
                  height: 42.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF006039),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r)),
                  ),
                  child: SizedBox(
                    width: 50.w,
                    height: 17.h,
                    child: Center(
                      child: Text(
                        'GET OTP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 46.h),
            Center(
              child: SizedBox(
                  width: 220.w,
                  height: 22.h,
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have a account ? ',
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Color(0xFF006039),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      GestureDetector(onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (_)=> SignupNumberFeild()));},
                        child: Text(
                          'Sign up',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Color(0xFF006039),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                            ),),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
