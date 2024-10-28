import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Login/Login.dart';

class Newpassword extends StatefulWidget {
  const Newpassword({super.key});

  @override
  State<Newpassword> createState() => _NewpasswordState();
}

class _NewpasswordState extends State<Newpassword> {
  bool passwordvisible = true;
  bool conformpasswordvisible = true;
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
                padding: EdgeInsets.only( top: 35.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 40.h),
                    Text(
                      'ENTER YOUR \n NEW PASSWORD',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                        color: Color(0xFF006039),
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                        height: 0.h,
                      ),),
                    ),
                    SizedBox(height: 50.h),
                    SizedBox(
                      width: 325.41.w,
                      height: 41.72.h,
                      child: TextField(
                        obscureText: passwordvisible,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline,
                              color: Color(0xFF006039)),
                          suffixIcon: IconButton(
                            icon: passwordvisible == false
                                ? Icon(
                              Icons.visibility_outlined,
                              color: Color(0xFFA7B0BB),
                            )
                                : Icon(
                              Icons.visibility_off_outlined,
                              color: Color(0xFFA7B0BB),
                            ),
                            onPressed: () {
                              setState(() {
                                passwordvisible = !passwordvisible;
                              });
                            },
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Password',
                          hintStyle: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color:
                              Colors.black.withOpacity(0.30000001192092896),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              height: 0.h,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1.w, color: Color(0xFF006039)),
                              borderRadius: BorderRadius.circular(15.r)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1.w, color: Color(0xFF006039)),
                              borderRadius: BorderRadius.circular(15.r)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    SizedBox(
                      width: 325.41.w,
                      height: 41.72.h,
                      child: TextField(obscureText: conformpasswordvisible,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline,
                              color: Color(0xFF006039)),
                          suffixIcon: IconButton(
                            icon: conformpasswordvisible == false
                                ? Icon(
                              Icons.visibility_outlined,
                              color: Color(0xFFA7B0BB),
                            )
                                : Icon(
                              Icons.visibility_off_outlined,
                              color: Color(0xFFA7B0BB),
                            ),
                            onPressed: () {
                              setState(() {
                                conformpasswordvisible = !conformpasswordvisible;
                              });
                            },
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Confirm Password',
                          hintStyle: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color:
                              Colors.black.withOpacity(0.30000001192092896),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              height: 0.h,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1.w, color: Color(0xFF006039)),
                              borderRadius: BorderRadius.circular(15.r)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1.w, color: Color(0xFF006039)),
                              borderRadius: BorderRadius.circular(15.r)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.h),
                    GestureDetector(onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Login() ));},
                      child:  Container(
                        width: 137.w,
                        height: 42.h,
                        decoration: ShapeDecoration(
                          color: Color(0xFF006039),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2.w, color: Color(0xFF006039)),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
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
